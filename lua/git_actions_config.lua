local M = {}

function M.pushToOrigin()
	local c_branch = vim.fn.system('git branch --show-current 2> /dev/null | tr -d "\n"')
	if c_branch == "" then
		print('Failed to find branch to push!')
		return
	end

	vim.cmd('G push origin ' .. c_branch)
end
