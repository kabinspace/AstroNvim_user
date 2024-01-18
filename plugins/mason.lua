return {
  "jay-babu/mason-nvim-dap.nvim",
  event = "VeryLazy",
  dependencies = {
    "williamboman/mason.nvim",
    "mfussenegger/nvim-dap",
  },

  opts = {
    ensure_installed = {
      "codelldb",
      "python",
      "bash",
    },
    handlers = {},
  },
}
