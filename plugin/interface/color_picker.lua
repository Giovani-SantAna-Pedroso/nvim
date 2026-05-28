vim.pack.add({
  {src="https://github.com/uga-rosa/ccc.nvim"}
})

local pkg = require("ccc")

pkg.setup({
  highlighter = {
    auto_enable = true,
    lsp = true,
  },
})





local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n", "<leader>pc", ":CccPick <CR>", opts)
