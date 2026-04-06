return {
	"Vigemus/iron.nvim",

	config = function()
		local iron = require("iron.core")
		local view = require("iron.view")
		local common = require("iron.fts.common")

		iron.setup({
			config = {
				scratch_repl = true,
				repl_definition = {
					sh = {
						command = { "fish" },
					},
					python = {
						command = { "ipython" },
						format = common.bracketed_paste_python,
						block_dividers = { "# %%", "#%%" },
						env = { PYTHON_BASIC_REPL = "1" },
					},
				},
				repl_filetype = function(bufnr, ft)
					return ft
				end,
				dap_integration = true,
				repl_open_cmd = view.split.rightbelow("%25"),

				-- repl_open_cmd = view.split.vertical.botright(0.3),
			},
			keymaps = {
				toggle_repl = "<space>ii",
				restart_repl = "<space>iR",
				send_motion = "<space>ic",
				visual_send = "<space>ic",
				send_file = "<space>iF",
				send_line = "<space>il",
				send_paragraph = "<space>ip",
				send_until_cursor = "<space>iu",
				send_mark = "<space>im",
				send_code_block = "<space>ib",
				send_code_block_and_move = "<space>in",
				mark_motion = "<space>ic",
				mark_visual = "<space>ic",
				remove_mark = "<space>id",
				cr = "<space>i<cr>",
				interrupt = "<space>i<space>",
				exit = "<space>iq",
				-- clear = "<space>il",
			},
			highlight = {
				italic = true,
			},
			ignore_blank_lines = true,
		})

		vim.keymap.set("n", "<space>if", "<cmd>IronFocus<cr>")
		vim.keymap.set("n", "<space>it", "<cmd>IronRepl<cr>", { desc = "Iron toggle" })
		vim.keymap.set("n", "<space>ih", "<cmd>IronHide<cr>")
	end,
}
