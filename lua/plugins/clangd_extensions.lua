---@type LazySpec
return {
  "p00f/clangd_extensions.nvim",
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      autocmds = {
        clangd_extensions = {
          {
            event = "LspAttach",
            desc = "Load clangd_extensions with clangd",
            callback = function(args)
              if assert(vim.lsp.get_client_by_id(args.data.client_id)).name == "clangd" then
                require "clangd_extensions"
                vim.api.nvim_del_augroup_by_name "clangd_extensions"
              end
            end,
          },
        },
      },
    },
  },
  opts = {
    inlay_hints = {
      parameter_hints_prefix = " ",
      other_hints_prefix = " ",
      highlight = "LspInlayHint",
    },
  },
}
