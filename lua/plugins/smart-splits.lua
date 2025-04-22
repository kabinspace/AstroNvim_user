---@type LazySpec
return {
  "mrjones2014/smart-splits.nvim",
  build = "./kitty/install-kittens.bash",
  opts = { at_edge = "stop" },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<C-Down>"] = false,
            ["<C-Left>"] = false,
            ["<C-Right>"] = false,
            ["<C-Up>"] = false,
            -- resize with arrows
            ["<Up>"] = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
            ["<Down>"] = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
            ["<Left>"] = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
            ["<Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },
          },
        },
      },
    },
  },
}
