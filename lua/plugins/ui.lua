local M = {}

table.insert(M, {
	'folke/which-key.nvim',
	enabled = false,
})

-- brown
local ui_bg = '#1b1c16'
ui_bg = '#1a1b15'
ui_bg = '#171812'
-- TODO: only for cmp
local float_color = '#17171f'
float_color = '#0f101f'
float_color = '#0e1024'
float_color = '#131426'

local telescope_bg = '#0f1018'
local telescope_preview_border = '#14151d'
ui_bg = telescope_preview_border
ui_bg = '#171717'
telescope_preview_border = '#12131b'
local telescope_prompt = float_color
-- float_color = ui_bg

local maybe_better_float_color = '#18192b'
local float_color_brighter = '#1c1e38'
local bufferline_derived_color = '#15162a'

-- swap telescopes
-- local a = telescope_bg
-- telescope_bg = telescope_prompt
-- telescope_prompt = a

local background = '#080c10'
local white = '#edede5'
white = '#e8e8e0'

table.insert(M, {
	'ofirgall/ofirkai.nvim',
	-- enabled = false,
	opts = {
		scheme = {
			-- midnight.nvim
			background = background,
			telescope_prompt = telescope_prompt,
			telescope_bg = telescope_bg,

			-- cursor_line_bg = '#1f2325',
			cursor_line_bg = '#1b1f21',
			winbar_bg = '#171b1d',
			white = '#edede5',
			-- visual_bg = '#30303c',
			visual_bg = '#14364e',
			search_bg = '#14364e',

			-- syntax
			aqua = '#58cbe1',
			orange = '#f8921a',
			green = '#9eda26',
			yellow = '#e1d66f',
			light_red = '#e5125e',
			purple = '#a97cfa',
			dark_pink = '#e373cd',
			dark_yellow = '#fbcd1d',

			-- ui
			ui_bg = ui_bg, -- background for ui, file tree and such.

			vert_split_fg = '#7b7b7b',
			vert_split_fg_active = '#888888',
			git_signs_add = '#567e06',
			git_signs_change = '#0063c0',
			tab_visible_fg = '#944770',

			-- darker diff colors
			diff_add = '#293e04',
			diff_remove = '#400519',
			diff_change = '#182c57',
			diff_text = '#14233e',
		},
		custom_hlgroups = {
			-- White border
			FloatBorder = {
				fg = white,
				bg = background,
			},
			NormalFloat = {
				link = 'Normal',
			},
			FloatTitle = {
				fg = '#e373cd',
				bg = float_color,
			},

			CmpFloat = {
				fg = white,
				bg = float_color,
				link = '',
			},
			CmpFloatBorder = {
				fg = float_color,
				bg = float_color,
				link = '',
			},

			SagaBorder = {
				fg = float_color,
				bg = float_color,
				link = '',
			},
			DiagnosticShowBorder = {
				fg = float_color,
				bg = float_color,
				link = '',
			},
			-- CodeActionNormal = {
			-- 	link = 'SagaNormal',
			-- },
			CodeActionBorder = {
				link = 'FloatBorder',
			},
			ActionPreviewBorder = {
				link = 'FloatBorder',
			},

			-- Blue border (only for cmp)
			-- FloatBorder = {
			-- 	fg = float_color,
			-- 	bg = float_color
			-- },
			-- NormalFloat = {
			-- 	fg = float_color,
			-- 	bg = float_color
			-- },

			-- IndentContext = {
			-- 	fg = '#762e6d',
			-- },

			LineNr = {
				fg = '#7a7a7a',
			},
			CursorLineNr = {
				fg = '#e0e0e0',
			},

			TelescopePreviewBorder = {
				fg = telescope_preview_border,
				bg = telescope_preview_border,
			},

			-- Swapped noice
			NoiceCmdLine = {
				bg = background,
			},
			NoiceBorder = {
				-- fg = '#1f1f19',
				-- bg = '#1f1f19',
				-- fg = white,
				-- bg = white,
				fg = float_color,
				bg = float_color,
			},
			NoiceFormatTitle = {
				bg = float_color,
				fg = float_color,
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

			Search = {
				-- fg='#dcd7ba',
				-- bg='#2d4f67',
				bg='#14364e',
			},
			IncSearch = {
				fg = white,
				-- fg='#dcd7ba',
				bg='#652d67',
			},
		},
	},
})

table.insert(M, {
	'akinsho/bufferline.nvim',
	opts = {
		options = {
			separator_style = 'thick',
			base_colors = {
				normal_bg = float_color_brighter,
				separator_background_color = background,
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
