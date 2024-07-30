return {
	"ziontee113/icon-picker.nvim",
	config = function()
		local n = require("icon-picker")
		n.setup({})
		local keymap = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }
		keymap("n", "<leader>pi", ":IconPickerInsert <CR>", opts)
	end,
}
