vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

local treesitter = require("nvim-treesitter")
treesitter.setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})

treesitter.install({
	"python",
	"gdscript",
	"godot_resource",
	"gdshader",
	"markdown",
	"java",
	"rust",
	"svelte",
	"yaml",
	"css",
	"html",
	"json",
	"javascript",
	"typescript",
	"c",
	"lua",
	"vim",
	"vimdoc",
	"query",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "<filetype>" },
	callback = function()
		vim.treesitter.start()
	end,
})

-- Enable Folds
vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.wo[0][0].foldmethod = "expr"

-- Identation
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
