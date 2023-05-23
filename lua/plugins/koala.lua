local M = {}

-- Custom setup of KoalaVim
table.insert(M, {
	'KoalaVim/KoalaVim',
	opts = {
		autocmds = {
			half_screen = {
				full_screen_width = 273,
			},
		},
	},
})


return M
