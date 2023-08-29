return {
  "nvim-tree/nvim-tree.lua",
  dependencies ={
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local n = require("nvim-tree")
    
    
    n.setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
        float = {
          enable = false,
          quit_on_focus_loss = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 60,
            height = 30,
            row = 1,
            col = 1,
            },
          },
        },
        diagnostics = {
          enable = true,
          show_on_dirs = false,
          show_on_open_dirs = true,
          debounce_delay = 50,
          severity = {
            min = vim.diagnostic.severity.HINT,
            max = vim.diagnostic.severity.ERROR,
          },
          icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          },
        },

      renderer = {
        root_folder_label = false,
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      git = {
        ignore = false,
      },
    })

    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    keymap("n", "<leader>a", ":NvimTreeToggle <CR>", opts)
  end
}
