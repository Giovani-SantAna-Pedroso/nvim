return {
	"folke/trouble.nvim",
	dependecies = {
		"nvim-tree/nvim-web-devicons",
	},
	--function to config the plugin
	config = function()
		local n = require("trouble")
		n.setup({})

		local keymap = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }
		local term_opts = { silent = true }
		keymap("n", "<leader>fw", ":TroubleToggle <CR>", opts)
	end,
}
