require("toggleterm").setup({
  -- open_mapping = [[<C-t>]],
})

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>t", ":ToggleTerm direction=float<cr>", opts)

