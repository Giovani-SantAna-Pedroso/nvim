# package do add

nvim-lua/popup.nvim
nvim-lua/plenary.nvim
nvim-etelescope/telescope.nvim
nvim-treesitter/nvim-treesitter
nvim-treesitter
chipsenkbeil/distant.nvim
iamcco/markdown-preview.nvim
mbbill/undotree
tpope/vim-fugitive
ziontee113/color-picker.nvim
windwp/nvim-autopairs
lukas-reineke/indent-blankline.nvim
norcalli/nvim-colorizer.lua
utilyre/barbecue.nvim
folke/todo-comments.nvim
folke/trouble.nvim
simrat39/symbols-outline.nvim
dinhhuy258/git.nvim

use {
"ggandor/leap.nvim",
requires={"tpope/vim-repeat"},
config= function()
local n = require("leap")
n.add_default_mappings()
end
}
