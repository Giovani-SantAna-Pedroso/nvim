return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local basic = require("giovani.plugins.lsp.settings.basic")

		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		lspconfig["bashls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})

		lspconfig["clangd"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.clangd"),
		})

		lspconfig["cssls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})

		lspconfig["docker_compose_language_service"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})

		lspconfig["dockerls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})

		lspconfig["html"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})

		lspconfig["jsonls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			-- settings =  require("giovani.plugins.lsp.settings.json")
		})

		lspconfig["lua_ls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.lua"),
		})

		-- ✓ csharp-language-server csharp_ls

		lspconfig["csharp_ls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
		-- lspconfig["omnisharp"].setup({
		-- 	capabilities = basic.capabilities,
		-- 	on_attach = basic.on_attach,
		-- 	cmd = { "dotnet", "/usr/bin/omnisharp" },
		-- enable_roslyn_analysers = true,
		-- enable_import_completion = true,
		-- organize_imports_on_format = true,
		-- enable_decompilation_support = true,
		-- settings = require("giovani.plugins.lsp.settings.omnisharp"),
		-- })

		lspconfig["prismals"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})

		lspconfig["pyright"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.pyright"),
		})

		lspconfig["rust_analyzer"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.rust_analyzer"),
		})

		lspconfig["tailwindcss"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.tsserver"),
		})

		lspconfig["tsserver"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.tsserver"),
		})

		lspconfig["svelte"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.svelte"),
		})

		lspconfig["yamlls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})

		lspconfig["solidity_ls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})
	end,
}
