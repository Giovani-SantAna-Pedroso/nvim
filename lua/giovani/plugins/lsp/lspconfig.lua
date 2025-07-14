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
		local basic_2 = require("giovani.plugins.lsp.settings.basic_2")

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

		-- This function will tell if the nvim is runing on a pc or a cellphone
		local function get_architecture()
			local pipe = io.popen("uname -m") -- for Unix-like systems
			local architecture = pipe:read("*a")
			pipe:close()
			return architecture:gsub("%s+", "") -- remove any trailing whitespace
		end

		local architcture = get_architecture()

		lspconfig["bashls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
		})

		lspconfig["pyright"].setup({
			capabilities = basic.capabilities,
			on_attach = basic_2.on_attach,
			settings = require("giovani.plugins.lsp.settings.pyright"),
		})

		lspconfig["ts_ls"].setup({

			capabilities = basic_2.capabilities,
			on_attach = basic_2.on_attach,
			settings = require("giovani.plugins.lsp.settings.tsserver"),
		})

		-- lspconfig.eslint.setup({
		-- 	cmd = { "bun", "x", "eslint_d", "--stdio" }, -- Use Bun for ESLint
		-- 	on_attach = function(client)
		-- 		client.server_capabilities.documentFormattingProvider = true
		-- 	end,
		-- })
		--
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

		lspconfig["jdtls"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			-- settings =  require("giovani.plugins.lsp.settings.json")
		})

		-- ✓ csharp-language-server csharp_ls

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

		lspconfig["tailwindcss"].setup({
			capabilities = basic_2.capabilities,
			on_attach = basic_2.on_attach,
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

		-- Only install this if the nvim is runing on a PC
		if string.find(architcture, "x86_64") ~= nil then
			lspconfig["csharp_ls"].setup({
				capabilities = basic.capabilities,
				on_attach = basic.on_attach,
			})

			lspconfig["clangd"].setup({
				capabilities = basic_2.capabilities,
				on_attach = basic_2.on_attach,
				settings = require("giovani.plugins.lsp.settings.clangd"),
			})

			lspconfig["lua_ls"].setup({
				capabilities = basic.capabilities,
				on_attach = basic.on_attach,
				settings = require("giovani.plugins.lsp.settings.lua"),
			})

			lspconfig["rust_analyzer"].setup({
				capabilities = basic_2.capabilities,
				on_attach = basic_2.on_attach,
				settings = require("giovani.plugins.lsp.settings.rust_analyzer"),
			})
		end
	end,
}
