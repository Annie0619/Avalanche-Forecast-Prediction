-- clean-unicode.lua  (Pandoc Lua filter)
-- Normalize tricky Unicode BEFORE LaTeX sees it.
function Str(el)
  el.text = el.text
    -- spaces
    :gsub("\u{00A0}", " ")   -- NBSP -> space
    :gsub("\u{202F}", " ")   -- narrow NBSP -> space
    :gsub("\u{200B}", "")    -- zero-width space -> remove
    :gsub("\u{2011}", "-")   -- non-breaking hyphen -> hyphen

    -- math-ish symbols that upset text fonts
    :gsub("\u{2248}", "$\\approx$") -- ≈
    :gsub("\u{223C}", "$\\sim$")    -- ∼
    :gsub("\u{00D7}", "$\\times$")  -- ×
    :gsub("\u{2212}", "-")          -- minus sign → hyphen (or "$-$")

    -- strip any C0/C1 control chars that might sneak in (except tab/newline which don't occur in Str)
    :gsub("[%z\1-\8\11\12\14-\31\127-\159]", "")
  return el
end
