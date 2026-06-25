local M = {
	'L3MON4D3/LuaSnip',
	version='v2.*',
	dependencies = { 'hrsh7th/nvim-cmp', 'rafamadriz/friendly-snippets' },
}

function M.config()
	require("luasnip.loaders.from_vscode").lazy_load()
	local ls = require("luasnip")
	local s = ls.snippet
	local t = ls.text_node
	local isn = ls.indent_snippet_node
	local f = ls.function_node
	local i = ls.insert_node

	ls.config.setup({store_selection_keys="<Tab>"})

	ls.add_snippets("all", {
		s("fname", {
			f(function ()
				return vim.fn.expand('%:t:r')
			end)
		})
	})

	local function getSurroundedText(args, sn)
		return sn.env.TM_SELECTED_TEXT[1] or {}
	end

	local curly_snippets = {"cs", "typescript", "typescriptreact", "go"}
	for _, ft in ipairs(curly_snippets) do
		ls.add_snippets(ft, {
			s("sif", {
				t('if ('), i(1, ''), t(') '), i(2, ''), t({'{', ''}),
					t('\t'), f(getSurroundedText, {}), t({''}),
				t({"", '}'})
			}),
			s("sts", {
				t("Surrounded text:"), f(function (_, sn)
					return sn.env.TM_SELECTED_TEXT[1] or {}
				end, {}), t(' The end')
			})
		})
	end
end

return M
