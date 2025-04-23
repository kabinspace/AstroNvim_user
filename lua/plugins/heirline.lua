return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astroui.status"
    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "bg" },

      status.component.mode {
        mode_text = { padding = { left = 1, right = 1 } },
      }, -- add the mode text

      status.component.builder {
        provider = "",
        file_icon = true,
        padding = { right = 1 },
        hl = { fg = "#61afef" },
      },

      status.component.file_info {
        filename = {
          fname = function(nr) return vim.fn.getcwd(nr) end,
        },
        hl = { bold = true, fg = "#abb2bf" },
        file_icon = false,
        file_modified = false,
        file_read_only = false,
        filetype = false,
        padding = { left = 0, right = 0 },
      },

      status.component.git_branch {
        padding = { right = 1 },
        surround = { separator = " " },
      },

      status.component.git_diff(),
      status.component.fill(),
      status.component.cmd_info(),
      status.component.fill(),

      status.component.diagnostics {
        surround = { separator = "" },
      },

      status.component.lsp {
        lsp_client_names = {
          hl = { bold = true },
          mappings = {

            -- python
            basedpyright = "[B]pyright",
            ruff_format = "Ruff",

            -- markdown
            markdown_oxide = "[M]oxide",
            typos_lsp = "Typo",
            prettier = "Prettier",

            -- lua
            lua_ls = "Lua_LS",
            stylua = "Stylua",

            -- go
            gopls = "Gopls",
            gofmt = "Gofmt",

            -- c/cpp
            clangd = "Clangd",
            clang_format = "Clang_Format",

            -- typst
            tinymist = "Tinymist",
            prettypst = "Prettypst",

            -- bash
            bashls = "Bash_LS",
            shfmt = "Shfmt",

            -- yaml
            yamlls = "Yaml_LS",

            -- toml
            taplo = "Taplo",
          },
          padding = { right = 1 },
        },
      },

      status.component.file_info {
        filetype = false,
        file_modified = false,
        padding = { left = 0, right = 0 },
        surround = { separator = "" },
      },

      status.component.builder {
        provider = function()
          local ft = vim.bo.filetype
          local title_ft = ft:sub(1, 1):upper() .. ft:sub(2)
          return title_ft
        end,
        hl = { bold = true },
        padding = { left = 0, right = 1 },
      },

      status.component.nav {
        percentage = false,
        scrollbar = false,
        ruler = false,
        padding = { left = 0, right = 0 },
        surround = { separator = "" },
      },
      status.component.builder {
        provider = " %l  %c",
        hl = { fg = "#abb2bf", bold = true },
        surround = { separator = "" },
        padding = { left = 1, right = 0 },
      },
    }
  end,
}
