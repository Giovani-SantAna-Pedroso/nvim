local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  {"folke/noice.nvim", event = "VeryLazy",
    opts = {
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },

  {"nvim-telescope/telescope.nvim"},
  {"nvim-treesitter/nvim-treesitter"},
  {"nvim-treesitter/playground"},
  {"aktersnurra/no-clown-fiesta.nvim"},

  -- cmp plugins

  -- snippets
  {"L3MON4D3/LuaSnip"}, --snippet engine
  {"rafamadriz/friendly-snippets"}, -- a bunch of snippets to use

  -- LSP
  {"neovim/nvim-lspconfig"},
--  {"williamboman/mason.nvim", cmd= ":MasonUpdate"},
  {"williamboman/mason-lspconfig.nvim"},
  {"jose-elias-alvarez/null-ls.nvim"},-- LSP diagnostics and code actions MUST change in the future
  {""},

  -- Git utilities
  {"tpope/vim-fugitive"},
  {"lewis6991/gitsigns.nvim"},
  -- {"tpope/vim-fugitive"},
  --
  -- Colorshemas
  {'rose-pine/neovim',
    priority = 1000,
  },
  -- mod lines
  {"nvim-lualine/lualine.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"}
  },
  {"tamton-aquib/staline.nvim"},

  {"nvim-tree",
    dependencies = {"nvim-tree/nvim-web-devicons"}
  },

  {"nvim-orgmode/orgmode"},
  {"numToStr/Comment.nvim"},
  
  -- UI Enrichment
  {"m4xshen/smartcolumn.nvim"},
  {"lukas-reineke/indent-blankline.nvim"},

  -- Movement
  {"phaazon/hop.nvim"},
  {""},

  {'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
      -- config
      }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}
  }
}


}

require("lazy").setup("giovani.plugins")
