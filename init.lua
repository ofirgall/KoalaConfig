------------------------------
-- TODO: desc
------------------------------

-- Remap space as leader key
-- TODO: [configure me] set different leader key
local leader_key = ' '

require('koala_init').load_koala(leader_key)

-- Require files under dir
local require_dir = require('KoalaVim.utils.require_dir')
require_dir.require('config')
require_dir.require('config/keymaps')

-- Lazy load config/lazy
vim.api.nvim_create_autocmd('User', {
	pattern = 'KoalaVimStarted',
	callback = function()
		require_dir.recursive_require('config/lazy')
	end,
})


-- lazy.nvim user spec
local spec = {
	{ import = 'plugins' },
	-- No need to import KoalaVim plugins they are loaded automatically from KoalaVim/lua/spec.lua
}

-- lazy.nvim user opts
-- TODO: type hint
local lazy_opts = {
	install = {
		-- TODO: [configure me] set your colorscheme
		colorscheme = { 'ofirkai' }, -- Which colorscheme to let lazy.nvim load first
	},
}


require('koala_init').load_lazy(spec, lazy_opts)
