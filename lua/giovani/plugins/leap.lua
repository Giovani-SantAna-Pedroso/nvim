 return {
    "ggandor/leap.nvim",
    dependecies={"tpope/vim-repeat"},
    config= function()
      local n = require("leap")
      n.add_default_mappings()
    end

 }
