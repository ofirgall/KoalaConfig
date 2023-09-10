local M = {}

table.insert(M, {
	'folke/which-key.nvim',
	enabled = false,
})

local float_color_brighter = '#1c1e38'
local background = '#080c10'

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

return M
