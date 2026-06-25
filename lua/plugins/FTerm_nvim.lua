local M = {
	"numToStr/FTerm.nvim",
	config = function ()
		require('FTerm').setup({
			border = 'double'
		})
	end,
	lazy = false
}

function M.setKeymaps()
	vim.keymap.set('nt', '<A-t>', function ()
		require('FTerm').toggle()
	end)
end

return {}
