local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cf", vim.cmd.Ex)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Save file
keymap("n", "<leader>e", ":w<cr>", opts)

--Open the file explorer
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "<A-p>", "<ESC>:w<CR> i", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

--Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- Remove the behaivor that when you use paste to replace something
-- This something go to your clipboard
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

--Buffer line

-- Tabs
keymap("n", "<leader>n", ":tabnew <CR>", opts)
keymap("n", "<leader>0", ":tabclose <CR>", opts)

--Trouble
keymap("n", "<leader>fw", ":TroubleToggle <CR>", opts)

--Split windown
keymap("n", "<leader>sv", ":vsplit <CR>", opts)
keymap("n", "<leader>sh", ":split <CR>", opts)
