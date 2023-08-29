local status_ok, n = pcall(require, "nvim-ts-autotag")
if not status_ok then
  print("Error with the trouble")
  return
end

n.setup()


--Enable the auto update ae
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
