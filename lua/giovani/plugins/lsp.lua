return{
  "neovim/nvim-lspconfig",
  dependecies= {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lsp = require("lspconfig") 
    local lspconfig = require("mason-lspconfig") 

    local path_config_lsp = "giovani.plugins.lsp_configs."

    lspconfig.setup({
      ensure_installed = {"lua_ls","clangd","dockerls",
        "docker_compose_language_service","html", "pyright",
        "tsserver", "jsonls", "svelte", "tailwindcss"}
    })

    lsp.lua_ls.setup(require(path_config_lsp .. "lua"))
    lsp.pyright.setup(require(path_config_lsp .. "pyright"))
    lsp.tsserver.setup(require(path_config_lsp .. "tsserver"))
    lsp.clangd.setup(require(path_config_lsp .. "clangd"))
    lsp.svelte.setup(require(path_config_lsp .. "svelte"))
    -- tadando pau no pc
    -- lsp.jsonls.setup(require(path_config_lsp .. "json"))
    lsp.docker_compose_language_service.setup({})
    lsp.jsonls.setup({})
    lsp.dockerls.setup({})
    lsp.html.setup({})
    lsp.prismals.setup({})
  end
} 
