local cmp = require "cmp"
return {
  completion = {
    completeopt = "menu,menuone,noinsert",
  },
  window = {
    documentation = {
      max_width = 40,
    },
  },
  mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
    ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
    ["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
    ["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
  },
}
