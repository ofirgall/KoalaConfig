local M = {}


-- TODO: make it dev
table.insert(M, {
	'ofirgall/title.nvim',
	cmd = 'Title',
	config = function()
		require('title-nvim').setup {
		}
	end,
})

return M
