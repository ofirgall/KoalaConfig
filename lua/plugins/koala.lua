local M = {}

-- Custom setup of KoalaVim
table.insert(M, {
	'KoalaVim/KoalaVim',
	opts = {
		autocmds = {
			half_screen = {
				full_screen_width = 273,
			},
			absolute_lines = false,
		},
		plugins = {
			open_jira = {
				jira_url = 'https://volumez.atlassian.net/browse/',
			},
		},
		lsp = {
			format = {
				blacklist = { 'clangd' },
			},
		},
	},
})

return M
