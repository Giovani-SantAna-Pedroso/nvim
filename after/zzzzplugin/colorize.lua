local status_ok, n = pcall(require, "colorizer")
if not status_ok then
  print("Erro with colorizer")
  return
end

n.setup()


