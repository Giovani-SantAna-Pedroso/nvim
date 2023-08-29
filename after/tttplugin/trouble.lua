local status_ok, n = pcall(require, "trouble")
if not status_ok then
  print("Error with the trouble")
  return
end

n.setup {}

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
keymap("n", "<leader>fw", ":TroubleToggle <CR>", opts)
