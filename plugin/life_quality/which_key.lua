vim.pack.add({
	{ src = "https://github.com/folke/which-key.nvim" },
})

local wk = require("which-key")

vim.o.timeout = true
vim.o.timeoutlen = 200
wk.setup({
	spelling = {
		enabled = true,
		suggestions = 20,
	},
})
