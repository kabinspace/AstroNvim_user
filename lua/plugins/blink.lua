--- @type LazySpec
return {
  "Saghen/blink.cmp",
  opts = {
    keymap = {
      ["<Tab>"] = { "accept", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
    },
    completion = {
      list = { selection = { preselect = true, auto_insert = true } },
      menu = {
        draw = {
          columns = {
            { "kind_icon", "label", gap = 1 },
          },
          components = {
            label = {
              text = function(ctx) return require("colorful-menu").blink_components_text(ctx) end,
              highlight = function(ctx) return require("colorful-menu").blink_components_highlight(ctx) end,
            },
          },
        },
      },
    },
    sources = {
      providers = {
        path = { opts = { trailing_slash = false, show_hidden_files_by_default = true } },
      },
    },
    signature = { enabled = true },
  },
}
