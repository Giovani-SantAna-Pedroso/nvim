return {
  "ziontee113/icon-picker.nvim",
  dependencies ={"stevearc/dressing.nvim"},
  config = function ()
    local n = require("icon-picker")
    n.setup({
      disable_legacy_commands = true
    })
    local opts = { noremap = true, silent = true }

    vim.keymap.set("n", "<Leader>fi", "<cmd>IconPickerNormal<cr>", opts)
    -- vim.keymap.set("n", "<Leader>fi", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
    -- vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
  end
}
