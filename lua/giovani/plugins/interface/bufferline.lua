return {
	"akinsho/bufferline.nvim",
	--function to config the plugin
	config = function()
		local n = require("bufferline")
		n.setup({

			options = {
				numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
				mode = "tabs", --Test this with tabs
				right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
				buffer_close_icon = "󰅖",
				modified_icon = "●",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				separator_style = "thin",
				-- diagnostics_update_in_insert = "nvim_lsp",
				diagnostics = true, -- | "nvim_lsp" | "coc",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
			},
		})

		local keymap = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }
		keymap("n", "<A-l>", ":BufferLineCycleNext <CR>", opts)
		keymap("n", "<A-h>", ":BufferLineCyclePrev <CR>", opts)
		keymap("n", "<C-x>0", ":wq <CR>", opts)
	end,
}
