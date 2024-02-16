return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
  end,
}
--[[
return{
  "nvim-telescope/telescope.nvim",
  dependecies={
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  --function to config the plugin
  config = function()
    local n = require("telescope")
    local actions = require("telescope.actions")
    n.setup({
  })

--keybinds
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Find all files 
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)

-- Find all files add in the git (will ignore the node moduls folder
keymap("n", "<leader>fg", ":Telescope git_files<CR>", opts)

-- Find word
vim.keymap.set("n", "<leader>fw", function ()
n.grep_string({search = vim.fn.input("Grep > ")})
end)

keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

  end
}

]]
