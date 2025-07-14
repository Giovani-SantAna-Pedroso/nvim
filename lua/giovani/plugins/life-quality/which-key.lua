return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		wk = require("which-key")
		vim.o.timeout = true
		vim.o.timeoutlen = 200
		wk.setup({
			spelling = {
				enabled = true,
				suggestions = 20,
			},
		})
	end,
	opts = {},
}
