-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "yaml-language-server",
        "bash-language-server",
        "lua-language-server",
        "markdown-oxide",
        "basedpyright",
        "typos-lsp",
        "html-lsp",
        "json-lsp",
        "css-lsp",
        "clangd",
        "gopls",

        -- install linters
        "shellcheck",
        "sqlfluff",
        "selene",

        -- install formatters
        "prettier",
        "stylua",
        "shfmt",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
