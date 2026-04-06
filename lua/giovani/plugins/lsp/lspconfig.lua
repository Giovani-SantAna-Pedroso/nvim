return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local basic = require("giovani.plugins.lsp.settings.basic")
		local basic_2 = require("giovani.plugins.lsp.settings.basic_2")

		-- =========================
		-- Diagnostics on hover
		-- =========================
		vim.api.nvim_create_autocmd("CursorHold", {
			pattern = "*",
			callback = function()
				for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
					if vim.api.nvim_win_get_config(winid).zindex then
						return
					end
				end

				vim.diagnostic.open_float({
					scope = "cursor",
					focusable = false,
					close_events = {
						"CursorMoved",
						"CursorMovedI",
						"BufHidden",
						"InsertCharPre",
						"WinLeave",
					},
				})
			end,
		})

		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = " ",
					[vim.diagnostic.severity.INFO] = " ",
					[vim.diagnostic.severity.HINT] = "󰠠 ",
				},
				linehl = {
					[vim.diagnostic.severity.ERROR] = "Error",
					[vim.diagnostic.severity.WARN] = "Warn",
					[vim.diagnostic.severity.INFO] = "Info",
					[vim.diagnostic.severity.HINT] = "Hint",
				},
			},
		})

		-- =========================
		-- Architecture detection
		-- =========================
		local function get_architecture()
			local pipe = io.popen("uname -m")
			local architecture = pipe:read("*a")
			pipe:close()
			return architecture:gsub("%s+", "")
		end

		local architecture = get_architecture()

		-- =========================
		-- Servers (lspconfig → vim.lsp.config)
		-- =========================

		vim.lsp.config("bashls", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("bashls")

		vim.lsp.config("qmlls", {})
		vim.lsp.enable("qmlls")

		vim.lsp.config("gdscript", basic.capabilities)
		vim.lsp.enable("gdscript")

		vim.lsp.config("basedpyright", {
			capabilities = basic.capabilities,
			on_attach = basic_2.on_attach,
			settings = require("giovani.plugins.lsp.settings.pyright"),
		})
		vim.lsp.enable("basedpyright")

		vim.lsp.config("ts_ls", {
			capabilities = basic_2.capabilities,
			on_attach = basic_2.on_attach,
			settings = require("giovani.plugins.lsp.settings.tsserver"),
		})
		vim.lsp.enable("ts_ls")

		vim.lsp.config("cssls", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("cssls")

		vim.lsp.config("docker_compose_language_service", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("docker_compose_language_service")

		vim.lsp.config("dockerls", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("dockerls")

		vim.lsp.config("html", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("html")

		vim.lsp.config("jsonls", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("jsonls")

		vim.lsp.config("jdtls", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("jdtls")

		vim.lsp.config("prismals", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("prismals")

		vim.lsp.config("tailwindcss", {
			capabilities = basic_2.capabilities,
			on_attach = basic_2.on_attach,
			settings = require("giovani.plugins.lsp.settings.tsserver"),
		})
		vim.lsp.enable("tailwindcss")

		vim.lsp.config("svelte", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.svelte"),
		})
		vim.lsp.enable("svelte")

		vim.lsp.config("yamlls", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("yamlls")

		vim.lsp.config("solidity_ls", {
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		vim.lsp.enable("solidity_ls")

		-- =========================
		-- Architecture-specific
		-- =========================
		if string.find(architecture, "x86_64") then
			vim.lsp.config("csharp_ls", {
				capabilities = basic.capabilities,
				on_attach = basic.on_attach,
			})
			vim.lsp.enable("csharp_ls")

			vim.lsp.config("clangd", {
				capabilities = basic_2.capabilities,
				on_attach = basic_2.on_attach,
				settings = require("giovani.plugins.lsp.settings.clangd"),
			})
			vim.lsp.enable("clangd")

			vim.lsp.config("lua_ls", {
				capabilities = basic.capabilities,
				on_attach = basic.on_attach,
				settings = require("giovani.plugins.lsp.settings.lua"),
			})
			vim.lsp.enable("lua_ls")

			vim.lsp.config("rust_analyzer", {
				capabilities = basic_2.capabilities,
				on_attach = basic_2.on_attach,
				settings = require("giovani.plugins.lsp.settings.rust_analyzer"),
			})
			vim.lsp.enable("rust_analyzer")
		end
	end,
}
