--- @type LazySpec
return {
  "lewis6991/gitsigns.nvim",
  dependencies = {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<Leader>gp"] = { function() require("gitsigns").preview_hunk() end, desc = "Preview Git hunk" }
      maps.n["<Leader>gi"] = { function() require("gitsigns").preview_hunk_inline() end, desc = "Inline Git hunk" }
    end,
  },
}
