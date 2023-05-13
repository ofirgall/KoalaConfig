-- Remap space as leader key
-- NOTE: Make sure to set `mapleader` before lazy.nvim loads plugins
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local spec = {
	{ import = 'plugins' },
	-- No need to import KoalaVim plugins they are loaded automatically from KoalaVim/lua/spec.lua
}

-- TODO: type hint
local lazy_opts = {
	install = {
		-- TODO: [configure me] set your colorscheme
		colorscheme = { 'ofirkai' }, -- Which colorscheme to let lazy.nvim load first
	},
}

require('koala_init').load(spec, lazy_opts)
