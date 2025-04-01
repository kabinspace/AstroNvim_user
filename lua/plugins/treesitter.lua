-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    indent = {
      disable = { "yaml" },
    },
  },
}
