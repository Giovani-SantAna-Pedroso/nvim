return {
  "mbbill/undotree", 
  config= function()
    -- require("undotree").setup()
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    keymap("n", "<leader>u", ":UndotreeToggle <CR>", opts)
  end

}
