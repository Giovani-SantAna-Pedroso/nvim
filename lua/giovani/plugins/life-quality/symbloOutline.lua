return{
  "simrat39/symbols-outline.nvim",
  --function to config the plugin
  config = function()
    local n = require("symbols-outline")
    n.setup({
    })

    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    keymap("n", "<leader>fs", ":SymbolsOutline <CR>", opts)
  end
}
