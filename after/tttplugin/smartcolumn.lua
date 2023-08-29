local status_ok, n = pcall(require, "smartcolumn")
if not status_ok then
  print("Error with the smartcolumn")
  return
end

-- anoing
-- n.setup({
--   colorcolumn = {  "80", "100" },
--    disabled_filetypes = { "help", "text", "markdown" },
--    custom_colorcolumn = {},
--    scope = "file",
-- })
