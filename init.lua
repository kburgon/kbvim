-- Clone Lazy.nvim if not found
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

-- Fetch all Lazy plugin configurations and compile into one plugin list
local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"
local lazy_plugins = {}

for name, file_type in vim.fs.dir(plugin_dir) do
	if file_type == "file" and name:match("%.lua$") then
		local module_name = name:gsub("%.lua$", "")
		local module = require("plugins." .. module_name)
		table.insert(lazy_plugins, module)
	end
end

require('lazy').setup(lazy_plugins)
