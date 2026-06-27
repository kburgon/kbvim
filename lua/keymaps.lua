local nkset = function (shortcut, cmd, opts)
	vim.keymap.set('n', shortcut, cmd, opts)
end

nkset('<C-h>', '<cmd>tabp<cr>')
nkset('<C-l>', '<cmd>tabn<cr>')
nkset('<leader>u', '<C-w>k')
nkset('<leader>e', '<C-w>j')
nkset('<leader>n', '<C-w>h')
nkset('<leader>i', '<C-w>l')
nkset('<leader>o', '<cmd>tabn<cr>')
nkset('<leader>h', '<cmd>tabp<cr>')
nkset('<leader>y', '<cmd>bn')
nkset('<leader>l', '<cmd>bp')
nkset('<leader>cc', function()
	if (vim.o.cursorcolumn) then
		vim.o.cursorcolumn = false
	else
		vim.o.cursorcolumn = true
	end
end)

