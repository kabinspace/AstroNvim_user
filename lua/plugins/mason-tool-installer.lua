---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    cmd = { "MasonToolsInstall", "MasonToolsUpdate", "MasonToolsClean" },
    dependencies = { "williamboman/mason.nvim" },
    init = function(plugin) require("astrocore").on_load("mason.nvim", plugin.name) end,
    opts = {
      ensure_installed = {
        -- Language Servers
        "clangd",
        "cssls",
        "html",
        "marksman",
        "jsonls",
        "basedpyright",
        "rust_analyzer",
        "sqlls",
        "lua_ls",
        "vtsls",
        "yamlls",
        "texlab",

        -- Linters
        -- "ansible-lint",
        -- "selene",
        -- "shellcheck",
        -- "flake8",

        -- Formatters
        -- "clang-format",
        -- "prettier",
        -- "black",
        -- "isort",
        -- "stylua",

        -- Debuggers
        -- "bash-debug-adapter",
        -- "codelldb",
        -- "debugpy",
        -- "cpptools",
        -- "haskell-debug-adapter",
        -- "js-debug-adapter",
      },
    },
    config = function(_, opts)
      local mason_tool_installer = require "mason-tool-installer"
      mason_tool_installer.setup(opts)
      mason_tool_installer.run_on_start()
    end,
  },
  { "jay-babu/mason-nvim-dap.nvim", optional = true, init = false },
  { "williamboman/mason-lspconfig.nvim", optional = true, init = false },
  { "jay-babu/mason-null-ls.nvim", optional = true, init = false },
}
