local M = {
	'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		view_options = {
			show_hidden = true,
		}
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}

function M.setKeymaps()
	print('setting oil keymaps')
	vim.keymap.set('n', '-', function () require("oil").toggle_float() end)	
	vim.keymap.set('n', '_', function () require("oil").toggle_float(vim.fn.getcwd()) end)
end

return M
