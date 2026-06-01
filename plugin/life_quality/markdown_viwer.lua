vim.pack.add({
	{ src = "https://github.com/OXY2DEV/markview.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

local n = require("markview")
n.setup({
	preview = {

		modes = { "n", "no", "c" },
		hybrid_modes = { "n" },

		callbacks = {
			on_enable = function(_, win)
				vim.wo[win].conceallevel = 2
				vim.wo[win].concealcursor = "c"
			end,
		},
	},
})

vim.cmd("Markview Enable")
