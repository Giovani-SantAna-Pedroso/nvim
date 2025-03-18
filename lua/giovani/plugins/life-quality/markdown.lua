return {
	"OXY2DEV/markview.nvim",
	lazy = false, -- Recommended
	-- ft = "markdown" -- If you decide to lazy-load anyway

	dependencies = {
		-- You will not need this if you installed the
		-- parsers manually
		-- Or if the parsers are in your $RUNTIMEPATH
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local n = require("markview")
		n.setup({
			preview = {

				modes = { "n", "no", "c" }, -- Change these modes
				hybrid_modes = { "n" }, -- Uses this feature on

				callbacks = {
					on_enable = function(_, win)
						vim.wo[win].conceallevel = 2
						vim.wo[win].concealcursor = "c"
					end,
				},
			},
			-- to what you need

			-- normal mode

			-- This is nice to have
		})

		vim.cmd("Markview Enable")
	end,
}

-- This one stop to work for some reason
-- return {
-- 	"iamcco/markdown-preview.nvim",
-- 	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
-- 	ft = { "markdown" },
-- 	build = function()
-- 		vim.fn["mkdp#util#install"]()
-- 	end,
-- }
