return {
	"uga-rosa/ccc.nvim",
	config = function()
		local n = require("ccc")
		n.setup({
			highlighter = {
				auto_enable = true,
				lsp = true,
			},
		})

		local keymap = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }
		keymap("n", "<leader>pc", ":CccPick <CR>", opts)
	end,
}
