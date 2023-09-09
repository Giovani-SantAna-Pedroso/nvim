local status_ok, n = pcall(require, "hop")
if not status_ok then
  print("Erro with hop")
  return
end

n.setup()
