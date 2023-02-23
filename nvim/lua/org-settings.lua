local orgmode = require("orgmode")
orgmode.setup_ts_grammar()
orgmode.setup({
	org_agenda_files = { "~/MEGAsync/org/**/*", "~/Agenda/**/*" },
	org_default_notes_file = "~/MEGAsync/org/refile.org",
})
