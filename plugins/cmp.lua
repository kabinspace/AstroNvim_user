local cmp = require "cmp"
local luasnip = require "luasnip"
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
    ["<Tab>"] = cmp.mapping(function(fallback)
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
}
