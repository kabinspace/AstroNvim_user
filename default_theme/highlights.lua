-- Modify the color palette for the default theme
return function(hl)
  local C = require "default_theme.colors"

  hl.Normal = { fg = C.fg, bg = C.bg }
  hl.DiagnosticError.bold = true
  hl.DiagnosticHint.bold = true
  hl.DiagnosticInfo.bold = true
  hl.DiagnosticWarn.bold = true

  return hl
end
