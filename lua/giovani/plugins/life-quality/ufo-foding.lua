return {
	"kevinhwang91/nvim-ufo",
	-- dependecies = { "kevinhwang91/promise-async" },
	dependecies = {
		"kevinhwang91/promise-async",
	},
	config = function()
		local vim = vim
		local opt = vim.opt

		opt.foldlevelstart = 99
		opt.foldlevel = 99
		-- opt.nofoldenable = true
		local n = require("ufo")

		vim.keymap.set("n", "zO", n.openAllFolds, { desc = "Open all folds" })
		vim.keymap.set("n", "zC", n.closeAllFolds, { desc = "closes all folds" })

		n.setup({
			provider_selector = function(bufnr, filetype, buftype)
				return { "lsp", "indent" }
			end,
		})
	end,
}
