local M = {}

-- TODO: make it dev
table.insert(M, {
	'ofirgall/title.nvim',
	cmd = 'Title',
	config = function()
		require('title-nvim').setup({})
	end,
})

table.insert(M, {
	'subnut/nvim-ghost.nvim',
	enabled = false,
	init = function()
		vim.g.nvim_ghost_autostart = 0
	end,
})

return M
