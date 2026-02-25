return {
	"christoomey/vim-tmux-navigator",
	lazy = false,
	keys = {
		{ "<C-h>", "<cmd>TmuxNavigateLeft<CR>", desc = "TMUX move left" },
		{ "<C-j>", "<cmd>TmuxNavigateDown<CR>", desc = "TMUX move down" },
		{ "<C-k>", "<cmd>TmuxNavigateUp<CR>", desc = "TMUX move up" },
		{ "<C-l>", "<cmd>TmuxNavigateRight<CR>", desc = "TMUX move right" },
	},
}
