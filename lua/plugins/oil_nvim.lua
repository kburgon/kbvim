local M = {
	'stevearc/oil.nvim',
	---@module 'oil'
	opts = {
		view_options = {
			show_hidden = true,
		}
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.init()
	vim.keymap.set('n', '-', function () require("oil").toggle_float() end)
	vim.keymap.set('n', '_', function () require("oil").toggle_float(vim.fn.getcwd()) end)
end

return M
