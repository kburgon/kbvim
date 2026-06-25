local M = {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	version = "*",
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons", -- optional dependency
	},
}

local function setAutocommands()
	vim.api.nvim_create_autocmd(
		"BufEnter",
		{
			pattern = "*",
			callback = function ()
				require('barbecue.ui').toggle(true)
			end
		}
	)
end

local function setKeymaps()
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

function M.config()
	setAutocommands()
	setKeymaps()
end

return M
