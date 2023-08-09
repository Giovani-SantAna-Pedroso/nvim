local status_ok, n = pcall(require, "gitsigns")
if not status_ok then
  print("Error with the lualine")
  return
end

n.setup {}
