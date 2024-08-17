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

		local toInstallLsp = {}
		local toInstallNull = {}

		local function get_architecture()
			local pipe = io.popen("uname -m") -- for Unix-like systems
			local architecture = pipe:read("*a")
			pipe:close()
			return architecture:gsub("%s+", "") -- remove any trailing whitespace
		end

		local architcture = get_architecture()

		if string.find(architcture, "x86_64") ~= nil then
			toInstallLsp = {
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
			}

			toInstallNull = {
				"prettier",
				"stylua",
				"rustfmt",
				"eslint_d",
				"black",
			}
		else
			toInstallLsp = {
				"bashls",
				"dockerls",
				"docker_compose_language_service",
				"html",
				"pyright",
				"tsserver",
				"jsonls",
				"svelte",
				"tailwindcss",
				"volar",
				-- "vscode-solidity-server",
				-- "solidity_ls",
				"cssls",
				-- "yaml-language-server",
			}

			toInstallNull = {
				"prettier",
				"eslint_d",
				"black",
			}
		end

		-- import mason-lspconfig
		mason_lspconfig.setup({
			ensure_installed = toInstallLsp,
			automatic_installation = true,
		})

		mason_null.setup({
			ensure_installed = toInstallNull,
			automatic_installation = true,
		})
	end,
}
