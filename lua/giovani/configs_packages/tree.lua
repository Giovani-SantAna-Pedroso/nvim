require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Toggle the nvim tree 
keymap("n", "<leader>a", ":NvimTreeToggle <CR>", opts)
