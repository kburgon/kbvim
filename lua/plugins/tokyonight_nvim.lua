return {
	'folke/tokyonight.nvim',
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme tokyonight-night]])
		vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
		vim.cmd('hi NormalNC guibg=NONE ctermbg=NONE')
		vim.cmd('hi EndOfBuffer guibg=NONE ctermbg=NONE')
	end
}
