return {
  "akinsho/toggleterm.nvim",
  config = function()
    local n = require("toggleterm")
    n.setup()

    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_set_keymap

    keymap("n", "<leader>t", ":ToggleTerm direction=float<cr>", opts)
  end
}
