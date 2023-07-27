require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls","clangd","dockerls",
  "docker_compose_language_service","html", "pyright",
  "tsserver", "jsonls", "svelte"},
})

local on_attach = function(client, bufnr)
  -- formating
end

-- LSPs configurations
require("lspconfig").lua_ls.setup(require("giovani.lsp.settings.lua"))
require("lspconfig").pyright.setup(require("giovani.lsp.settings.pyright"))
--require("lspconfig").jsonls.setup(require("giovani.lsp.settings.json"))
require("lspconfig").jsonls.setup({})
require("lspconfig").tsserver.setup(require("giovani.lsp.settings.tsserver"))
require("lspconfig").clangd.setup(require("giovani.lsp.settings.clangd"))
require("lspconfig").svelte.setup(require("giovani.lsp.settings.svelte"))

require("lspconfig").docker_compose_language_service.setup({})
require("lspconfig").dockerls.setup({})
require("lspconfig").html.setup({})

--[[
local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  print("error in the lsp config file")
  return
end

lspconfig.pyright.setup {}

require "giovani.lsp.mason"
--Configure the LSP 
--require "user.lsp.null-ls"
]]--
