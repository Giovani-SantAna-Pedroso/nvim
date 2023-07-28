-- Setup nvim-cmp.
local status_ok, n = pcall(require, "indent_blankline")
if not status_ok then
  print("Erro with autopais")
  return
end

n.setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
