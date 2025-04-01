--- @type LazySpec
return {
  {
    "akinsho/toggleterm.nvim",
    opts = {
      highlights = {
        Normal = { link = "Normal" },
        NormalNC = { link = "NormalNC" },
        NormalFloat = { link = "NeoTreeNormal" },
        FloatBorder = { link = "NeoTreeNormal" },
        StatusLine = { link = "StatusLine" },
        StatusLineNC = { link = "StatusLineNC" },
        WinBar = { link = "WinBar" },
        WinBarNC = { link = "WinBarNC" },
      },
      direction = "float",
    },
  },
}
