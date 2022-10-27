-- Modify the color palette for the default theme
return function(hl)
  local C = require "default_theme.colors"

  hl.Normal = { fg = C.fg, bg = C.bg }
  hl.DiagnosticError.italic = true
  hl.DiagnosticHint.italic = true
  hl.DiagnosticInfo.italic = true
  hl.DiagnosticWarn.italic = true

  return hl
end
