local status_ok, n = pcall(require, "todo-comments")
if not status_ok then
  print("Error with the todo-comments")
  return
end

n.setup {}
