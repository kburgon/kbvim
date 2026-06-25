local M = {
	'kristijanhusak/vim-dadbod-ui',
	cmd = {
		'DBUI',
		'DBUIToggle',
		'DBUIAddConnection',
		'DBUIFindBuffer'
	},
}

M.dependencies = {
	{ 'tpope/vim-dadbod', lazy = true },
	{
		'kristijanhusak/vim-dadbod-completion',
		ft = { 'sql', 'mysql', 'sqlite' },
		lazy = true
	}
}

function M.init()
	vim.g.db_ui_use_nerd_fonts = 1
end

function M.config()
	vim.keymap.set('n', '<leader>dt', '<cmd>DBUIToggle<cr>')
end

return M
