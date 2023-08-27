local status_ok, n = pcall(require, "dashboard")
if not status_ok then
  print("Erro with dashboard")
  return
end

n.setup({
  theme = 'doom'
})

