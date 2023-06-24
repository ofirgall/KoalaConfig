local M = {}

table.insert(M, {
	'folke/which-key.nvim',
	enabled = false,
})

-- brown
local ui_bg = '#1b1c16'
ui_bg = '#1a1b15'
ui_bg = '#1f1f19'
local background = '#080c10'

table.insert(M, {
	'ofirgall/ofirkai.nvim',
	opts = {
		scheme = {
			-- midnight.nvim
			background = background,
			telescope_prompt = '#131310',

			cursor_line_bg = '#24282a',
			winbar_bg = '#1e2224',
			white = '#edede5',

			-- syntax
			aqua = '#5ccfe5',
			orange = '#f8921a',
			green = '#a3df2b',
			yellow = '#e1d66f',
			light_red = '#e5125e',
			purple = '#a97cfa',
			dark_pink = '#e373cd',
			dark_yellow = '#fbcd1d',

			-- ui
			ui_bg = ui_bg, -- background for ui, file tree and such.

			vert_split_fg = '#7b7b7b',
			vert_split_fg_active = '#797979',
			git_signs_add = '#567e06',
			git_signs_change = '#0063c0',
		},
		custom_hlgroups = {
			-- TODO: make IndentContext grey?
			-- IndentContext = {
			-- 	fg = scheme.dimmed_aqua,
			-- },

			LineNr = {
				fg = '#7a7a7a',
			},
			CursorLineNr = {
				fg = '#e0e0e0',
			},

			-- brown telescope
			TelescopePreviewNormal = {
				bg = '#1f1f19',
			},
			-- TODO: make the dark section lighter

			-- Swapped noice
			NoiceCmdLine = {
				bg = background,
			},
			NoiceBorder = {
				fg = '#1f1f19',
				bg = '#1f1f19',
			},
			NoiceCmdlinePopup = { -- Actual search line
				link = 'NoiceCmdLine',
			},
			NoiceCmdlinePopupBorder = {
				link = 'NoiceBorder',
			},
			NoiceCmdlinePopupBorderCmdline = {
				link = 'NoiceBorder',
			},
			NoiceCmdlinePopupBorderFilter = {
				link = 'NoiceBorder',
			},
			NoiceCmdlinePopupBorderLua = {
				link = 'NoiceBorder',
			},
			NoiceCmdlinePopupBorderSearch = {
				link = 'NoiceBorder',
			},
		},
	},
})

return M
