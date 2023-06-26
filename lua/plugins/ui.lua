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
local white = '#edede5'

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
			visual_bg = '#30303c',

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

			-- darker diff colors
			diff_add = '#293e04',
			diff_remove = '#400519',
			diff_change = '#182c57',
			diff_text = '#14233e',
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

-- customized modus-vivendi
local colors = {
	black = '#000000',
	white = white,
	red = '#ffa0a0',
	green = '#88cf88',
	-- blue = '#92baff',
	blue = '#7ea6eb',
	magenta = '#feacd0',
	cyan = '#a0bfdf',
	brown = '#33332a',
	lightbrown = '#45453b',
	darkgray = '#202020',
	lightgray = '#434343',
	orange = '#de933c',

	background = '#2a2a30',
	second_bg = '#363640',
}

local theme = {
	normal = {
		a = { bg = colors.blue, fg = colors.lightgray, gui = 'bold' },
		b = { bg = colors.second_bg, fg = colors.blue },
		c = { bg = colors.background, fg = colors.blue },
		x = { bg = colors.background, fg = colors.blue },
	},
	insert = {
		a = { bg = colors.cyan, fg = colors.lightgray, gui = 'bold' },
		b = { bg = colors.second_bg, fg = colors.cyan },
		c = { bg = colors.background, fg = colors.cyan },
		x = { bg = colors.background, fg = colors.cyan },
	},
	visual = {
		a = { bg = colors.magenta, fg = colors.lightgray, gui = 'bold' },
		b = { bg = colors.second_bg, fg = colors.magenta },
		c = { bg = colors.background, fg = colors.magenta },
		x = { bg = colors.background, fg = colors.magenta },
	},
	replace = {
		a = { bg = colors.red, fg = colors.lightgray, gui = 'bold' },
		b = { bg = colors.second_bg, fg = colors.red },
		c = { bg = colors.background, fg = colors.red },
		x = { bg = colors.background, fg = colors.red },
	},
	command = {
		a = { bg = colors.green, fg = colors.lightgray, gui = 'bold' },
		b = { bg = colors.second_bg, fg = colors.green },
		c = { bg = colors.background, fg = colors.green },
		x = { bg = colors.background, fg = colors.green },
	},
	inactive = {
		a = { bg = colors.darkgray, fg = colors.lightgray, gui = 'bold' },
		b = { bg = colors.darkgray, fg = colors.lightgray },
		c = { bg = colors.darkgray, fg = colors.lightgray, gui = 'bold' },
		x = { bg = colors.darkgray, fg = colors.lightgray },
	},
}

table.insert(M, {
	'nvim-lualine/lualine.nvim',
	opts = {
		options = {
			theme = theme,
		},
	},
})

return M
