---@type LazySpec
return {
  "stevearc/conform.nvim",
  event = "User AstroFile",
  version = vim.fn.has "nvim-0.10" ~= 1 and "7",
  cmd = "ConformInfo",
  dependencies = { "williamboman/mason.nvim" },
  ---@param opts conform.setupOpts
  opts = function(_, opts)
    opts.default_format_opts = { lsp_format = "fallback" }

    opts.format_on_save = function(bufnr)
      if vim.g.autoformat == nil then vim.g.autoformat = true end
      local autoformat = vim.b[bufnr].autoformat
      if autoformat == nil then autoformat = vim.g.autoformat end
      if autoformat then return { timeout_ms = 2000 } end
    end

    opts.formatters_by_ft = {
      c = { "clang_format" },
      cpp = { "clang_format" },
      toml = { "taplo" },
      lua = { "stylua" },
      sh = { "shfmt" },
      go = { "gofmt" },
      sql = { "sqlfluff" },
      python = { "ruff_format" },
      typst = { "prettypst" },
    }

    -- prettier filetypes
    vim.tbl_map(function(ft) opts.formatters_by_ft[ft] = { "prettier" } end, {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "vue",
      "css",
      "scss",
      "less",
      "html",
      "json",
      "jsonc",
      "yaml",
      "yaml.ansible",
      "yaml.cfn",
      "markdown",
      "markdown.mdx",
      "graphql",
      "handlebars",
    })

    opts.formatters = {
      prettier = {
        options = {
          ft_parsers = {
            markdown = "markdown",
          },
        },
      },
    }
  end,
  specs = {
    { "AstroNvim/astrolsp", opts = { formatting = { disabled = true } } },
    {
      "AstroNvim/astrocore",
      opts = {
        options = { opt = { formatexpr = "v:lua.require'conform'.formatexpr()" } },
        commands = {
          Format = {
            function(args)
              local range = nil
              if args.count ~= -1 then
                local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                range = {
                  start = { args.line1, 0 },
                  ["end"] = { args.line2, end_line:len() },
                }
              end
              require("conform").format { async = true, range = range }
            end,
            desc = "Format buffer",
            range = true,
          },
        },
        mappings = {
          n = {
            ["<Leader>lf"] = { function() vim.cmd.Format() end, desc = "Format buffer" },
            ["<Leader>lI"] = { function() vim.cmd.ConformInfo() end, desc = "Conform information" },
            ["<Leader>uf"] = {
              function()
                if vim.b.autoformat == nil then
                  if vim.g.autoformat == nil then vim.g.autoformat = true end
                  vim.b.autoformat = vim.g.autoformat
                end
                vim.b.autoformat = not vim.b.autoformat
                require("astrocore").notify(
                  string.format("Buffer autoformatting %s", vim.b.autoformat and "on" or "off")
                )
              end,
              desc = "Toggle autoformatting (buffer)",
            },
            ["<Leader>uF"] = {
              function()
                if vim.g.autoformat == nil then vim.g.autoformat = true end
                vim.g.autoformat = not vim.g.autoformat
                vim.b.autoformat = nil
                require("astrocore").notify(
                  string.format("Global autoformatting %s", vim.g.autoformat and "on" or "off")
                )
              end,
              desc = "Toggle autoformatting (global)",
            },
          },
        },
      },
    },
  },
}
