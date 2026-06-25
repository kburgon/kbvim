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
local lazy_plugins = {}
local set_keymap_funcs = {}

for name, file_type in vim.fs.dir(plugin_dir) do
	if file_type == "file" and name:match("%.lua$") then
		local module_name = name:gsub("%.lua$", "")
		local module = require("plugins." .. module_name)
		table.insert(lazy_plugins, module)
		if type(module.setKeymaps) == "function" then
			table.insert(set_keymap_funcs, module.setKeymaps)
		end
	end
end

require('lazy').setup(lazy_plugins)

-- Run all keymap configs
for _, exec in ipairs(set_keymap_funcs) do
	exec()
end
