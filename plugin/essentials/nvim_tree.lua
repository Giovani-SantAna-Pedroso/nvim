vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" }, -- optional
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
})

local pkg = require("nvim-tree")

pkg.setup({
	sort_by = "case_sensitive",

	view = {
		width = 30,
		side = "left",
		float = {
			enable = false,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 60,
				height = 30,
				row = 1,
				col = 1,
			},
		},
	},

	diagnostics = {
		enable = true,
		show_on_dirs = false,
		show_on_open_dirs = true,
		debounce_delay = 50,
		severity = {
			min = vim.diagnostic.severity.HINT,
			max = vim.diagnostic.severity.ERROR,
		},
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},

	renderer = {
		root_folder_label = false,
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
	git = {
		ignore = false,
	},
})

vim.keymap.set("n", "<leader>a", "<cmd>NvimTreeToggle<CR>", {
	noremap = true,
	silent = true,
	desc = "Toggle nvim tree",
})
