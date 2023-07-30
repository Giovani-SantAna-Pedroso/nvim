local status_ok, n = pcall(require, "which-key")
if not status_ok then
  print("Error with the which-key")
  return
end

n.setup{}
