local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

return {
	"hadronized/hop.nvim",
	config = function()
		local n = require("hop")
		n.setup()
		keymap("n", "s", ":HopChar1<CR>", opts)
		-- require'hop'.hint_words()
	end,
}
