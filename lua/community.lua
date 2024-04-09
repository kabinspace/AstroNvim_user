-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- import/override with your plugins folder
  -- heirline
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  -- codesnap
  { import = "astrocommunity.media.codesnap-nvim" },
  {
    "mistricky/codesnap.nvim",
    build = "make",
    opts = {
      save_path = "~/Pictures/screenshots/codesnap/",
      code_font_family = "JetBrainsMono Nerd Font",
      bg_color = "#a8b0d5",
    },
  },
}
