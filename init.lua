
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

local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"

for name, type in vim.fs.dir(plugin_dir) do
	if type == "file" and name:match("%.lua$") then
		local module_name = name:gsub("%.lua$", "")
		local module = require("plugins." .. module_name)
		local mt = getmetatable(module)
		if module:isPlugin() == true then
			print(module.repo)
		end
	end
end
