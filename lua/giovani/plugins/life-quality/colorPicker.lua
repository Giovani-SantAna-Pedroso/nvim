return{
  "ziontee113/color-picker.nvim",
  --function to config the plugin
  config = function()
    local n = require("color-picker")
    n.setup({

      ["icons"] = { "ﱢ", "" },
      ["border"] = "rounded", -- none | single | double | rounded | solid | shadow
      ["keymap"] = { -- mapping example:
        ["U"] = "<Plug>ColorPickerSlider5Decrease",
        ["O"] = "<Plug>ColorPickerSlider5Increase",
      },
      ["background_highlight_group"] = "Normal", -- default
      ["border_highlight_group"] = "FloatBorder", -- default
      ["text_highlight_group"] = "Normal", --default
      })
    vim.cmd([[hi FloatBorder guibg=NONE]]) 

  end
}
