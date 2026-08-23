-- answers-inline.lua
-- The practice-question answers use a <details markdown="1"><summary>Answer</summary> … </details>
-- collapsible so the web edition can hide/reveal them. E-readers don't support that interaction
-- (Kindle in particular hides the content with no way to expand it — tapping just opens the
-- dictionary). For every offline build (EPUB, PDF, Kindle) we replace the collapsible with an
-- always-visible block: a bold "Answer" label followed by the answer content.

local function raw_html(b)
  if b.t == "RawBlock" and b.format == "html" then return b.text end
  return nil
end

-- Runs on every list of blocks (top level and nested), so it also catches answers inside other
-- structures. Rebuilds the list, collapsing each <details>…</details> span into a plain Div.
function Blocks(blocks)
  local out = {}
  local i = 1
  while i <= #blocks do
    local b = blocks[i]
    local r = raw_html(b)
    if r and r:match("^%s*<details") then
      local label, inner, in_summary = nil, {}, false
      local j = i + 1
      while j <= #blocks do
        local c = blocks[j]
        local cr = raw_html(c)
        if cr and cr:match("</details>") then break end
        if cr and cr:match("<summary") then
          in_summary = true
          local lbl = cr:match("<summary[^>]*>(.-)</summary>")   -- inline <summary>Answer</summary>
          if lbl and lbl ~= "" then label = lbl; in_summary = false end
        elseif cr and cr:match("</summary>") then
          in_summary = false
        elseif in_summary then
          label = pandoc.utils.stringify(c)                       -- label sits in its own block
        else
          table.insert(inner, c)
        end
        j = j + 1
      end
      label = label or "Answer"
      local head = pandoc.Para({ pandoc.Strong({ pandoc.Str(label) }) })
      local kids = { head }
      for _, blk in ipairs(inner) do table.insert(kids, blk) end
      table.insert(out, pandoc.Div(kids, pandoc.Attr("", { "answer" }, {})))
      i = j + 1   -- skip past the closing </details>
    else
      table.insert(out, b)
      i = i + 1
    end
  end
  return out
end
