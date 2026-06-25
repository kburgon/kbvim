local M = {
	'numToStr/Comment.nvim',
	opts = {},
	lazy = false,
}

function M.config()
	local config = require("Comment")
	config.setup({
		padding = true,
		sticky = true,
		opleader = {
			line = 'gc',
			block = 'gb'
		}
	})
end

return M
