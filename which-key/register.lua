-- Modify which-key registration
-- Add bindings which show up as group name
return {
  -- first key is the mode, n == normal mode
  n = {
    -- second key is the prefix, <leader> prefixes
    ["<leader>"] = {
      -- third key is the key to bring up next level and its displayed
      -- group name in which-key top level menu
      ["n"] = { "<cmd>tabnew<cr>", "New Buffer" },
      ["z"] = { "<cmd>ZenMode<cr>", "Zen Mode" },
    },
  },
}
