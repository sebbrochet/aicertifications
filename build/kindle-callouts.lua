-- kindle-callouts.lua
-- Pandoc filter for the Kindle (AZW3) build. Turns each emoji callout blockquote
--   > 📌 **Key concept**: …
-- into a styled Div (a box with a left rule) whose emoji is replaced by a monochrome
-- icon image. This removes every emoji from the Kindle edition (Kindle reading fonts have
-- no emoji glyphs, so they'd render as "missing glyph" boxes) while keeping a clear visual cue.

local map = {
  ["\u{1F4CC}"] = { cls = "callout-key",  icon = "key"  },  -- 📌 Key concept
  ["\u{1F50D}"] = { cls = "callout-how",  icon = "how"  },  -- 🔍 How it works
  ["\u{1F3AF}"] = { cls = "callout-tip",  icon = "tip"  },  -- 🎯 Exam tip
  ["\u{26A0}"]  = { cls = "callout-warn", icon = "warn" },  -- ⚠  Pitfall (often ⚠️ with U+FE0F)
  ["\u{1F4A1}"] = { cls = "callout-hint", icon = "hint" },  -- 💡 Tip
  ["\u{1F4D6}"] = { cls = "callout-def",  icon = "def"  },  -- 📖 Definition
  ["\u{1F517}"] = { cls = "callout-src",  icon = "src"  },  -- 🔗 Source
  ["\u{2705}"]  = { cls = "callout-good", icon = "good" },  -- ✅ Good practice
  ["\u{1F5E3}"] = { cls = "callout-say",  icon = "say"  },  -- 🗣 Formulation
  ["\u{1F52C}"] = { cls = "callout-sci",  icon = "sci"  },  -- 🔬 Science
}

local ICON_DIR = "kindle-icons/"

local function match_emoji(text)
  for key, v in pairs(map) do
    if text:sub(1, #key) == key then return key, v end
  end
  return nil, nil
end

function BlockQuote(bq)
  local first = bq.content[1]
  if not first or (first.t ~= "Para" and first.t ~= "Plain") then return nil end

  local inlines = first.content
  -- Skip any leading spaces/soft breaks to reach the first real inline.
  local i = 1
  while inlines[i] and (inlines[i].t == "Space" or inlines[i].t == "SoftBreak") do i = i + 1 end
  local lead = inlines[i]
  if not lead or lead.t ~= "Str" then return nil end

  local key, v = match_emoji(lead.text)
  if not key then return nil end

  -- Remove the emoji (and a trailing variation selector U+FE0F) from the leading Str.
  local rest = lead.text:sub(#key + 1)
  rest = rest:gsub("^\u{FE0F}", "")
  if rest == "" then
    table.remove(inlines, i)                       -- drop the emoji-only Str
    if inlines[i] and inlines[i].t == "Space" then -- and the space that followed it
      table.remove(inlines, i)
    end
  else
    inlines[i] = pandoc.Str(rest)
  end

  -- Prepend the icon image + a non-breaking space before the (bold) label.
  local img = pandoc.Image({}, ICON_DIR .. v.icon .. ".png", "", pandoc.Attr("", { "callout-icon" }, {}))
  table.insert(inlines, i, pandoc.Str("\u{00A0}"))
  table.insert(inlines, i, img)

  first.content = inlines
  bq.content[1] = first
  return pandoc.Div(bq.content, pandoc.Attr("", { "callout", v.cls }, {}))
end

-- Kindle can't render MathML, so LaTeX math leaks through as raw source
-- (e.g. "ROI=V-CC\text{...}"). Convert the handful of simple formulas in this
-- book to a plain, readable Unicode string instead.
local function latex_to_text(s)
  s = s:gsub("\\text%s*{(.-)}", "%1")            -- \text{ROI} -> ROI
  s = s:gsub("\\frac%s*{(.-)}%s*{(.-)}", "(%1) / (%2)")  -- \frac{A}{B} -> (A) / (B)
  s = s:gsub("\\times", "\u{00D7}")
  s = s:gsub("\\cdot", "\u{00B7}")
  s = s:gsub("\\,", " ")
  s = s:gsub("[{}]", "")
  s = s:gsub("%s+", " ")
  s = s:gsub("^%s+", ""):gsub("%s+$", "")
  return s
end

function Math(el)
  local text = latex_to_text(el.text)
  if el.mathtype == "DisplayMath" then
    return pandoc.RawInline("html", '<span class="kmath">' .. text .. '</span>')
  end
  return pandoc.Str(text)
end

