-- KoalaVim initialization, DO NOT EDIT.
local M = {}

function M.load(user_spec, lazy_opts)
	-- Bootstrap lazy.nvim and KoalaVim
	local bootstrap = require('utils.bootstrap')
	bootstrap('folke', 'lazy.nvim', 'stable', 'LAZY')
	bootstrap('ofirgall', 'KoalaVim', 'master', 'KOALA')

	local koala_spec = require('KoalaVim.spec')

	user_spec = user_spec or {}

	-- Concat user_spec with koala_spec
	local combined_spec = {}
	table.move(user_spec, 1, #user_spec, 1, combined_spec)
	table.move(koala_spec, 1, #koala_spec, #combined_spec + 1, combined_spec)

	local koala_lazy_opts = {
		-- folke/lazy.nvim settings
		defaults = {
			lazy = false, -- Don't lazy load plugins by default
			version = false, -- always use the latest git commit
		},
		checker = {
			-- automatically check for plugin updates
			enabled = false,
		},
		change_detection = {
			-- Don't auto reload config
			enabled = false,
		},
		performance = {
			rtp = {
				-- disable some rtp plugins
				disabled_plugins = {
					'gzip',
					'matchit',
					'matchparen',
					'netrwPlugin',
					'tarPlugin',
					'tohtml',
					'tutor',
					'zipPlugin',
				},
			},
		},
	}

	lazy_opts = vim.tbl_deep_extend('keep', lazy_opts or {}, koala_lazy_opts)
	-- Force combined spec
	lazy_opts.spec = combined_spec

	require('lazy').setup(lazy_opts)
end

return M
