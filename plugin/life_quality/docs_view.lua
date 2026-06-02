vim.pack.add({
	{ src = "https://github.com/amrbashir/nvim-docs-view" },
})

require("docs-view").setup({
	position = "right",
	width = 40,
})

vim.keymap.set("n", "<leader>ltd", "<cmd>Telescope find_files<cr>", { desc = "Toggle docs" })
