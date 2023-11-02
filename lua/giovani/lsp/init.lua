local status_ok, mason = pcall(require, "mason")
if not status_ok then
  print("Error with the mason")
  return
end

local status_ok2, lspconfig = pcall(require, "mason-lspconfig")
if not status_ok2 then
  print("Error with the mason-lspconfig")
  return
end

local status_ok3, lsp = pcall(require, "lspconfig")
if not status_ok3 then
  print("Error with the lspconfig")
  return
end

mason.setup()

lspconfig.setup({
  ensure_installed = {"lua_ls","clangd","dockerls",
  "docker_compose_language_service","html", "pyright",
  "tsserver","csharp_ls", "jsonls", "svelte", "tailwindcss", "volar"},
})

local on_attach = function(client, bufnr)
  -- formating
end

-- LSPs configurations
lsp.lua_ls.setup(require("giovani.lsp.settings.lua"))
lsp.pyright.setup(require("giovani.lsp.settings.pyright"))
--lsp.jsonls.setup(require("giovani.lsp.settings.json"))
lsp.jsonls.setup({})
-- I'm trying to use the volar a.k.a vue-language-server
lsp.tsserver.setup(require("giovani.lsp.settings.tsserver"))
lsp.clangd.setup(require("giovani.lsp.settings.clangd"))
lsp.svelte.setup(require("giovani.lsp.settings.svelte"))
lsp.docker_compose_language_service.setup({})
lsp.dockerls.setup({})
lsp.html.setup({})
lsp.prismals.setup({})
-- lsp.volar.setup{
--   filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
-- }
lsp.csharp_ls.setup{}
--it is broken the pc
-- lsp.tailwindcss.setup({})

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
