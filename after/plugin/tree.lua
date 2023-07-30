local status_ok, n = pcall(require, "nvim-tree")
if not status_ok then
  print("Error with the nvim-tree")
  return
end

n.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    hide_root_folder = true,

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
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    ignore = false,
  },
})

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Toggle the nvim tree 
keymap("n", "<leader>a", ":NvimTreeToggle <CR>", opts)
