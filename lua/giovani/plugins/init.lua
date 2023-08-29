-- Add here plugins whom does not need configuration
return{
  {"aktersnurra/no-clown-fiesta.nvim"},
  {"phaazon/hop.nvim", config= true},
  {"folke/todo-comments.nvim",
    config= true, 
    dependencies = {"nvim-lua/plenary.nvim"},
    event= {"InsertEnter"},
  },
  {"folke/which-key.nvim", config= true},
}
