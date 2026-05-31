vim.pack.add({
	{ src = "https://github.com/uga-rosa/ccc.nvim" },
})

local pkg = require("ccc")

pkg.setup({
	highlighter = {
		auto_enable = true,
		lsp = true,
	},
})

vim.api.nvim_set_keymap(
	"n",
	"<leader>pc",
	":CccPick <CR>",
	{ noremap = true, silent = true, desc = "Pick a color code" }
)
