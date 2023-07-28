require("trouble").setup {}

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
keymap("n", "<leader>fw", ":TroubleToggle <CR>", opts)
