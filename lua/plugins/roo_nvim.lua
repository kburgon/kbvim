local M = {
	'kburgon/roo.nvim',
	lazy = false,
}

function M.config()
	for i = 1, 9, 1 do
		nkset('<leader>s'..i, function ()
			require('roo.utils').set(i)
		end, { desc = 'Set the current buffer to the jump index '..i..'.' })

		nkset('g'..i, function ()
			require('roo.utils').jump(i)
		end, { desc = 'Jump to the buffer set at index '..i..'.' })
	end
end

return M
