-- load when 
return {
  "nvim-orgmode/orgmode",
  ft="org",
  config = function()
    local n = require("orgmode")
      n.setup_ts_grammar()
      n.setup({
        org_agenda_files = {'~/Documents/org/*', '~/my-orgs/**/*'},
        org_default_notes_file = '~/Documents/org/refile.org',
      })
  end
}
