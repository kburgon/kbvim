local M = {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	version = "*",
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons", -- optional dependency
	},
}

function M.registerAutoCommand()
	vim.api.nvim_create_autocmd(
		"BufEnter",
		{
			pattern = "*",
			callback = function ()
				require('babecue.ui').toggle(true)
			end
		}
	)
end

function M.setKeymaps()
	vim.keymap.set(
		'n',
		'gp',
		function ()
			require('barbecue.ui').navigate(-1)
		end,
		{
			desc = "Navigate to the last entry in Barbecue's menu (navigate to the parent of the line of code)"
		}
	)
end

return M
