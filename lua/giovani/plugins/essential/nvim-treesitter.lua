--
return {
	"nvim-treesitter/nvim-treesitter",
	dependecies = {},
	--function to config the plugin
	config = function()
		local n = require("nvim-treesitter.configs")
		n.setup({
			ensure_installed = {
				"python",
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
			},
			auto_install = true,
			-- 		context_commentstring = {
			-- 			config = {
			-- 				javascript = {
			-- 					__default = "// %s",
			-- 					jsx_element = "{/* %s */}",
			-- 					jsx_fragment = "{/* %s */}",
			-- 					jsx_attribute = "// %s",
			-- 					comment = "// %s",
			-- 				},
			-- 				typescript = { __default = "// %s", __multiline = "/* %s */" },
			-- 			},
			-- 		},

			-- erro aqui
			highlight = {
				enable = true,
				--
				-- 	additional_vim_regex_highlighting = false,
			},
		})
	end,
}

-- stack traceback: in function convert_severity
-- stack traceback: in function handle_diagnostics
