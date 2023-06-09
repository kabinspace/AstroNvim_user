return {
  "AstroNvim/astrotheme",
  opts = {
    highlights = {
      astrodark = {
        modify_hl_groups = function(hl)
          hl.NeoTreeIndentMarker = { fg = "#8094B4" }
          hl.NeoTreeNormal = { bg = "#1b1f27" }
          hl.NeoTreeNormalNC = { bg = "#1b1f27" }
          hl.DiagnosticError.bold = true
          hl.DiagnosticHint.bold = true
          hl.DiagnosticInfo.bold = true
          hl.DiagnosticWarn.bold = true
        end,
      },
    },
  },
}
