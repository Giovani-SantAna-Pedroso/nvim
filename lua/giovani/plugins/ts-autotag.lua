return{
  "windwp/nvim-ts-autotag",
  ft={"javascriptreact", "html", "typescriptreact", "svelte"},
  config = function()
    local n = require("nvim-ts-autotag")
    n.setup()

      vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
          vim.lsp.diagnostic.on_publish_diagnostics,
          {
              underline = true,
              virtual_text = {
                  spacing = 5,
                  severity_limit = 'Warning',
              },
              update_in_insert = true,
          }
      )
  end

}
