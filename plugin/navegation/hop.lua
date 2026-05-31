vim.pack.add({
	{ src = "https://github.com/yuki-yano/hop.nvim" },
})

vim.api.nvim_set_keymap("n", "s", "<cmd>lua require'hop'.jump_words()<cr>", {})
