local M = {
	"numToStr/FTerm.nvim",
	lazy = false
}

function M.config()
	local fterm = require'FTerm'
	fterm.setup({
		border = 'double'
	})

	vim.keymap.set('n', '<A-t>', function ()
		fterm.toggle()
	end)
end

return M
