return {
 "rcarriga/nvim-notify",
 config= function()
  local n = require("notify")
  vim.notify = n, 
  n.setup({
    background_colour = "#000000",
  })
 end
}
