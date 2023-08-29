return {
  "williamboman/mason.nvim",
  config = function()
    local n = require("mason")
    n.setup({
      ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
      }
    })
    -- vim.cmd("MasonUpdate")
  end
}
