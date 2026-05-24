vim.pack.add({
  -- Dependencies
  {src="https://github.com/SmiteshP/nvim-navic"},
  {src="https://github.com/nvim-tree/nvim-web-devicons"},


  {src="https://github.com/utilyre/barbecue.nvim", name="barbecue"},
}) 

local pkg = require("barbecue")

pkg.setup({})
