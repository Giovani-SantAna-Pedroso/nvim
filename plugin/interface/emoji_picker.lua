vim.pack.add({
	{ src = "https://github.com/ziontee113/icon-picker.nvim" },
})

require("icon-picker").setup({})

vim.keymap.set("n", "<leader>pi", ":IconPickerInsert <CR>", { noremap = true, silent = true, desc = "Pick an emoji" })
