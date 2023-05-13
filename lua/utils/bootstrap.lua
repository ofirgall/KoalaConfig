-- bootstraps nvim plugins used by `koala_init.lua`, DO NOT EDIT.
return function(plugin_author, plugin_name, branch, env_path_override)
	local path = vim.fn.stdpath('data') .. '/lazy/' .. plugin_name
	if not vim.loop.fs_stat(path) then
		-- bootstrap lazy.nvim
		vim.fn.system({
			'git',
			'clone',
			'--filter=blob:none',
			'https://github.com/' .. plugin_author .. '/' .. plugin_name .. '.git',
			'--branch=' .. branch,
			path,
		})
	end
	vim.opt.rtp:prepend(vim.env[env_path_override] or path)
end
