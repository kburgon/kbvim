local M = {
	'tpope/vim-fugitive',
	lazy = false,
}

local function nkset(shortcut, cmd, opts)
	vim.keymap.set('n', shortcut, cmd, opts)
end

function M.config()
	nkset('<leader>gg', '<cmd>G<cr>')
	nkset('<leader>gpl', '<cmd>G pull<cr>')
	nkset('<leader>gfl', '<cmd>G log -p -- %<cr>')
end

return M
