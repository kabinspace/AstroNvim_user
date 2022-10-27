-- use mason-lspconfig to configure LSP installations
return {
  automatic_installation = true,
  ensure_installed = {
    "clangd",
    "cssls",
    "html",
    "marksman",
    "jsonls",
    "pyright",
    "sqls",
    "sumneko_lua",
    "tsserver",
    "yamlls",
  },
}
