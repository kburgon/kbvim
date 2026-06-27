local M = {
	'tpope/vim-fugitive',
	lazy = false,
}

local function nkset(shortcut, cmd, opts)
	vim.keymap.set('n', shortcut, cmd, opts)
end

function M.config()
	print('setting fugitive keymaps')
	nkset('<leader>gg', '<cmd>G<cr>')
	nkset('<leader>gpl', '<cmd>G pull<cr>')
	nkset('<leader>gps', function ()
		require('git_actions_config').PushToOrigin()
	end, { desc = "Push changes to the remote repository" })
	nkset('<leader>gfl', '<cmd>G log -p -- %<cr>')
end

return M
