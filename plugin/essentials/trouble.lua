vim.pack.add({
	{ src = "https://github.com/folke/trouble.nvim" },
})

local n = require("trouble")
n.setup({})

vim.api.nvim_set_keymap(
	"n",
	"<leader>ft",
	"Trouble diagnostics toggle",
	{ noremap = true, silent = true, desc = "Find trouble" }
)
