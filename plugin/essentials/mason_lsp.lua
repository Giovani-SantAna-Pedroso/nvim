vim.pack.add({
  {src="https://github.com/mason-org/mason.nvim"},
  {src="https://github.com/mason-org/mason-lspconfig.nvim"},
  {src="https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"},
})

require("mason").setup()
require("mason-lspconfig").setup()

-- This automatic calls the vim.lsp.enable
require("mason-tool-installer").setup({
  ensure_installed ={
				"bashls",
				"qmlls",
				"lua_ls",
				"clangd",
				"gdtoolkit",
				"dockerls",
				"docker_compose_language_service",
				"html",
				"jdtls",
				"basedpyright",
				"ts_ls",
				"csharp_ls",
				"jsonls",
				"svelte",
				"tailwindcss",
				"rust_analyzer",
				"solidity_ls",
				"cssls",
				"prettier",
				"stylua",
				"eslint_d",
				"black",
  }
})
