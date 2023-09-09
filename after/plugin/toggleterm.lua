local status_ok, n = pcall(require, "toggleterm")
if not status_ok then
  print("Error with the toggleterm")
  return
end

n.setup({
  -- open_mapping = [[<C-t>]],
})

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>t", ":ToggleTerm direction=float<cr>", opts)

