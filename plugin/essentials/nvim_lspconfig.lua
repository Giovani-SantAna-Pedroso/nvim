-- Does not require the require function
vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	-- Completion
	-- {src="https://github.com/Saghen/blink.cmp"},
})

vim.o.updatetime = 100

vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, {
			focusable = false,
			close_events = {
				"BufLeave",
				"CursorMoved",
				"InsertEnter",
				"FocusLost",
			},
			border = "rounded",
			source = "always",
			prefix = "",
		})
	end,
})
