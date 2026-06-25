local function config()
	vim.api.nvim_create_autocmd('FileType', {
		pattern = {
			'cs',
			'csharp',
			'html',
			'js',
			'lua',
			'cpp',
			'h',
			'c',
			'py',
			'go',
			'js',
			'ts',
			'jsx',
			'tsx',
			'css',
			'scss',
			'md',
			'sh',
			'bash',
			'zsh',
			'xml'
		},
		callback = function ()
			vim.treesitter.start()
		end
	})
end

return {
	'nvim-treesitter/nvim-treesitter',
	branch = 'main',
	build = ":TSUpdate",
	config = config
}
