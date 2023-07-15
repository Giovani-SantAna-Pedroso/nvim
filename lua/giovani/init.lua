--Basic configs
require("giovani.keybinds")
require("giovani.options")
require("giovani.packer")
require("giovani.colorschema")

-- Lsp to see more to go ./lsp/init.lua 
require("giovani.lsp")

-- Packages configurations
require("giovani.configs_packages.cmp")
require("giovani.configs_packages.telescope")
require("giovani.configs_packages.treesiter")
require("giovani.configs_packages.undotree")
require("giovani.configs_packages.fugitive")
require("giovani.configs_packages.tree")
require("giovani.configs_packages.bufferline")
require("giovani.configs_packages.org")
require("giovani.configs_packages.comments")
require("giovani.configs_packages.smartcolumn")

-- Status line
require("giovani.configs_packages.lualine")
-- require("giovani.configs_packages.staline")
--Error in this file
--require("giovani.harpoon")
