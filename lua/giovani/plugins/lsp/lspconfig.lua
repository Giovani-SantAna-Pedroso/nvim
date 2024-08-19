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
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.pyright"),
		})

		lspconfig["tsserver"].setup({
			capabilities = basic.capabilities,
			on_attach = basic.on_attach,
			settings = require("giovani.plugins.lsp.settings.tsserver"),
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

		-- Only install this if the nvim is runing on a PC
		if string.find(architcture, "x86_64") ~= nil then
			lspconfig["csharp_ls"].setup({
				capabilities = basic.capabilities,
				on_attach = basic.on_attach,
			})

			lspconfig["clangd"].setup({
				capabilities = basic.capabilities,
				on_attach = basic.on_attach,
				settings = require("giovani.plugins.lsp.settings.clangd"),
			})

			lspconfig["lua_ls"].setup({
				capabilities = basic.capabilities,
				on_attach = basic.on_attach,
				settings = require("giovani.plugins.lsp.settings.lua"),
			})

			lspconfig["rust_analyzer"].setup({
				capabilities = basic.capabilities,
				on_attach = basic.on_attach,
				settings = require("giovani.plugins.lsp.settings.rust_analyzer"),
			})
		end
	end,
}
