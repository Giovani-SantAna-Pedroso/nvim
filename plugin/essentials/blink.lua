vim.pack.add({
	{ src = "https://github.com/Saghen/blink.lib" },
	{ src = "https://github.com/Saghen/blink.cmp" },
	-- dependencies
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/onsails/lspkind.nvim" },
})
-- lua/plugins/blink.lua
local lspkind = require("lspkind")

require("blink.cmp").setup({
	-- Keymaps parecidos com sua config do cmp
	keymap = {
		preset = "none", -- desativa preset pra customizar

		["<C-n>"] = { "select_next", "fallback" },
		["<C-e>"] = { "select_prev", "fallback" }, -- você usava C-e como prev

		["<C-b>"] = { "scroll_documentation_up", "fallback" },
		["<C-f>"] = { "scroll_documentation_down", "fallback" },

		["<C-Space>"] = { "show", "fallback" },
		["<C-k>"] = { "hide", "fallback" },

		["<CR>"] = { "accept", "fallback" },

		["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
		["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
	},

	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "mono",
	},

	-- Fontes (parecido com o seu)
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
		-- Se quiser otter:
		-- per_filetype = {
		--   quarto = { "lsp", "path", "snippets", "buffer", "otter" },
		-- },
	},

	snippets = {
		preset = "luasnip", -- importante para funcionar com LuaSnip
	},

	completion = {
		documentation = {
			auto_show = true,
		},
		menu = {
			draw = {
				columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
			},
		},
	},

	signature = { enabled = true },

	-- Ícones com lspkind (parecido com sua config)
	appearance = {
		kind_icons = lspkind.symbol_map, -- usa os ícones do lspkind
	},
})

local capabilities = {
	textDocument = {
		foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		},
	},
}

capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

-- or equivalently

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
--
-- capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities({}, false))
--
-- capabilities = vim.tbl_deep_extend("force", capabilities, {
-- 	textDocument = {
-- 		foldingRange = {
-- 			dynamicRegistration = false,
-- 			lineFoldingOnly = true,
-- 		},
-- 	},
-- })
