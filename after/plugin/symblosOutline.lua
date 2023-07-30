local status_ok, n = pcall(require, "symbols-outline")
if not status_ok then
  print("Error with the symbols-outline")
  return
end

n.setup {} 

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("n", "<leader>fs", ":SymbolsOutline <CR>", opts)
