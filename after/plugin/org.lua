local status_ok, n = pcall(require, "orgmode")
if not status_ok then
  print("Error with the orgmode")
  return
end

n.setup_ts_grammar()

n.setup({
  org_agenda_files = {'~/Documents/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/Documents/org/refile.org',
})
