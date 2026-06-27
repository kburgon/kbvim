local M = {
	'williamboman/mason.nvim',
	lazy = false,
	dependencies = { 
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig'
	},
}

function M.config()
	require("mason").setup({
		registries = {
			"github:mason-org/mason-registry",
			"github:Crashdummyy/mason-registry"
		}
	})

	require("mason-lspconfig").setup {
		ensure_installed = {
			"lua_ls",
			"marksman",
			"sqlls",
			"ts_ls",
			"yamlls",
			"tailwindcss",
			"pylsp"
		}
	}

	local lsps = {
		{ 'lua_ls' },
		{ 'marksman' },
		{ 'sqlls' },
		{ 'ts_ls' },
		{ 'yamlls' },
		{ 'tailwindcss' },
		{ 'gopls' },
		{ 'pylsp' },
		{
			'roslyn',
			config = {
				on_attach = function ()
					print("Roslyn server attached!")
				end,
				settngs = {
					["csharp|background_analysis"] = {
						dotnet_analyzer_diagnostics_scope = 'fullSolution',
						dotnet_compiler_diagnostics_scope = 'fullSolution',
					},
					["csharp|code_lens"] = {
						dotnet_enable_references_code_lens = true,
						dotnet_enable_tests_code_lens = true,
					},
					["csharp|completion"] = {
						dotnet_provide_regex_completions = true,
						dotnet_show_completion_items_from_unimported_namespaces = true,
						dotnet_show_name_completion_suggestions = true,
					},
					["csharp|inlay_hints"] = {
						csharp_enable_inlay_hints_for_implicit_object_creation = true,
						csharp_enable_inlay_hints_for_implicit_variable_types = true,
						csharp_enable_inlay_hints_for_lambda_parameter_types = true,
						csharp_enable_inlay_hints_for_types = true,
						dotnet_enable_inlay_hints_for_indexer_parameters = true,
						dotnet_enable_inlay_hints_for_literal_parameters = true,
						dotnet_enable_inlay_hints_for_object_creation_parameters = true,
						dotnet_enable_inlay_hints_for_other_parameters = true,
						dotnet_enable_inlay_hints_for_parameters = true,
						dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
						dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
					},
					["csharp|symbol_search"] = {
						dotnet_search_reference_assemblies = true
					},
					["csharp|formatting"] = {
						dotnet_organize_imports_on_format = true
					}
				}
			}
		}
	}

	for _, lsp in pairs(lsps) do 
		local name, config = lsp[1], lsp.config
		vim.lsp.enable(name)
		if config then
			vim.lsp.config(name, config)
		end
	end

end

return M
