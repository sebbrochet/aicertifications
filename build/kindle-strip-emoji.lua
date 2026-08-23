-- kindle-strip-emoji.lua
-- Second-pass filter for the Kindle build. The callout filter (kindle-callouts.lua) converts
-- callout blockquotes into icon boxes and removes THEIR emoji. This pass removes any remaining
-- inline emoji that appear in ordinary prose (e.g. the Introduction lists the callout types),
-- since the Kindle reading font can't render them. Apply it AFTER kindle-callouts.lua.

local emoji = {
  "\u{1F4CC}", "\u{1F50D}", "\u{1F3AF}", "\u{26A0}", "\u{1F4A1}",
  "\u{1F4D6}", "\u{1F517}", "\u{2705}", "\u{1F5E3}", "\u{1F52C}",
}

function Str(el)
  local t = el.text
  local changed = false
  for _, e in ipairs(emoji) do
    local new = t:gsub(e, "")          -- plain literal removal (no quantifier on multibyte)
    if new ~= t then t = new; changed = true end
  end
  local n2 = t:gsub("\u{FE0F}", "")     -- strip any stray variation selectors
  if n2 ~= t then t = n2; changed = true end
  if changed then
    if t == "" then return {} end       -- drop a now-empty Str (e.g. a standalone emoji)
    return pandoc.Str(t)
  end
end
