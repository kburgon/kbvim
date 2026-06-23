local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end

vim.opt.rtp:prepend(lazypath)

local plugin_dir = vim.fn.stdpath("config") .. "/plugins"

for name, type in vim.fs.dir(plugin_dir) do
	if type == "file" and name:match("%.lua$") then
		local module_name = name:gsub("%.lua$", "")
		print("Requiring " .. module_name)
		require("plugins." .. module_name)
	end
end
