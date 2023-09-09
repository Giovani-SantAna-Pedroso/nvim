local fn = vim.fn
    
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  -- fuse finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- treesitter
  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- REmote development
  use {
      'chipsenkbeil/distant.nvim',
      branch = 'v0.3',
      config = function()
          require('distant'):setup()
      end
  }

  --Jumped
  --Markdown preview
 -- install without yarn or npm
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  --Colors schemes
  use "aktersnurra/no-clown-fiesta.nvim" -- Useful lua functions used ny lots of plugins
  --Jumped
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use({ 'rose-pine/neovim', as = 'rose-pine',   })

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"


  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  -- Ui to install LSPs
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
  use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions

  use "ThePrimeagen/harpoon"
  use 'mbbill/undotree'
  use "tpope/vim-fugitive"
  use 'ziontee113/color-picker.nvim'

--[[
 use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
  --]]

use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

  -- Git
  use "lewis6991/gitsigns.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "moll/vim-bbye"


  use "akinsho/bufferline.nvim"
  --mod lines
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    "folke/noice.nvim",
    requires = { "MunifTanjim/nui.nvim",'rcarriga/nvim-notify' }
  }

  --nvim tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  use "nvim-orgmode/orgmode"
  use "numToStr/Comment.nvim"
  use "m4xshen/smartcolumn.nvim"
  use 'tamton-aquib/staline.nvim'

  --Indentention lines
  use "lukas-reineke/indent-blankline.nvim"

  use {
    "phaazon/hop.nvim",
    branch = 'v2'
  }

  --Highlight colors
  use 'norcalli/nvim-colorizer.lua'

  --The bar on the top of the file
  use({
  "utilyre/barbecue.nvim",
  tag = "*",
  requires = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  after = "nvim-web-devicons", -- keep this if you're using NvChad
  config = function()
    require("barbecue").setup()
  end,
  })

  -- fuse finder
  use {
    'folke/todo-comments.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- find troubles in the code run usning <leader>fw
  use {
    'folke/trouble.nvim',
    requires = { {'nvim-tree/nvim-web-devicons'} }
  }


  --Show the variables classies etc run using <leader>fs
  use 'simrat39/symbols-outline.nvim'

  use "sbdchd/neoformat"
  use "folke/which-key.nvim"
  use "akinsho/toggleterm.nvim"
  use "rebelot/kanagawa.nvim"

  use "windwp/nvim-ts-autotag"
  
  -- To improve the performance use with this 
  -- https://github.com/fsouza/prettierd
  use{
    'MunifTanjim/prettier.nvim',
    requires = { 
      {'neovim/nvim-lspconfig'}, 
      {'jose-elias-alvarez/null-ls.nvim'}, 
    }
  }

  use 'dinhhuy258/git.nvim'
  use 'rcarriga/nvim-notify'

  use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  requires = {'nvim-tree/nvim-web-devicons'}
  }
  use {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }
  use {
    "ggandor/leap.nvim",
    requires={"tpope/vim-repeat"},
    config= function()
      local n = require("leap")
      n.add_default_mappings()
    end
  }
  use 'wfxr/minimap.vim'
  --Nao mexer, DO NOT TOUCH
    if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)
