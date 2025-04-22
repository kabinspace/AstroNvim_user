return {
  "echasnovski/mini.icons",
  opts = {
    file = {
      ["README.md"] = { glyph = "󰂺" },
    },
    filetype = {
      c = { glyph = "" },
      go = { glyph = "" },
    },
  },
  specs = {
    {
      "nvim-neo-tree/neo-tree.nvim",
      opts = {
        default_component_configs = {
          icon = {
            provider = function(icon, node)
              local text, hl
              local mini_icons = require "mini.icons"
              if node.type == "file" then
                text, hl = mini_icons.get("file", node.name)
              end

              if text then icon.text = text end
              if hl then icon.highlight = hl end
            end,
          },
        },
      },
    },
  },
}
