local status_ok, n = pcall(require, "null-ls")
if not status_ok then
  print("Error with the null-ls")
  return
end

n.setup({
    sources = {
        n.builtins.formatting.stylua,
        n.builtins.diagnostics.eslint,
        n.builtins.completion.spell,
    },
})
