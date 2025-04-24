---@type LazySpec
return {
  "NeogitOrg/neogit",
  cmd = "Neogit",
  opts = {
    disable_builtin_notifications = true,
    disable_signs = true,
    mappings = {
      status = {
        ["<S-Tab>"] = "Close",
      },
    },
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["<Leader>gG"] = { function() vim.cmd.Neogit() end, desc = "Neogit" },
            ["<S-Tab>"] = { function() vim.cmd.Neogit() end, desc = "Neogit" },
            ["<Leader>gn"] = { function() vim.cmd.Neogit "commit" end, desc = "New Git commit" },
          },
        },
      },
    },
  },
}
