return {
	"williamboman/mason.nvim",

	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_null = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- import mason-lspconfig
		mason_lspconfig.setup({
			ensure_installed = {
				"bashls",
				"lua_ls",
				"clangd",
				"dockerls",
				"docker_compose_language_service",
				"html",
				"pyright",
				"tsserver",
				"csharp_ls",
				"jsonls",
				"svelte",
				"tailwindcss",
				"rust_analyzer",
				"volar",
				-- "vscode-solidity-server",
				-- "solidity_ls",
				"cssls",
				-- "yaml-language-server",
			},
			automatic_installation = true,
		})

		mason_null.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"rustfmt",
				"eslint_d",
				"black",
			},
			automatic_installation = true,
		})
	end,
}
