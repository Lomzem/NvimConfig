---@type LazySpec
return {
	"folke/snacks.nvim",
	lazy = false,
	-- config = function()
	-- 	-- vim.api.nvim_create_user_command("Cola", Snacks.picker.colorschemes, {})
	-- 	vim.api.nvim_create_user_command("Cola", function()
	-- 		Snacks.input({ prompt = "hi" }, function(value)
	-- 			vim.notify(value)
	-- 		end)
	-- 	end, {})
	-- end,
	---@module "snacks"
	---@type snacks.Config
	opts = {
		picker = {
			matcher = {
				frecency = true,
			},
			win = {
				input = {
					keys = {
						["<c-x>"] = { "edit_vsplit", mode = { "i", "n" } },
					},
				},
			},
		},
		quickfile = {},
		scope = {},
		input = {},
		notifier = {
			timeout = 1500,
		},
	},
	keys = {
		{
			"<c-p>",
			function()
				Snacks.picker.files()
			end,
		},
		{
			"<leader>ps",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		-- lsp
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "Goto Definition",
		},
		{
			"gD",
			function()
				Snacks.picker.lsp_declarations()
			end,
			desc = "Goto Declaration",
		},
		{
			"gr",
			function()
				Snacks.picker.lsp_references()
			end,
			nowait = true,
			desc = "References",
		},
		{
			"gi",
			function()
				Snacks.picker.lsp_implementations()
			end,
			desc = "Goto Implementation",
		},
		{
			"gt",
			function()
				Snacks.picker.lsp_type_definitions()
			end,
			desc = "Goto T[y]pe Definition",
		},
		{
			"gm",
			function()
				Snacks.picker.lsp_symbols()
			end,
			desc = "LSP Symbols",
		},
		{
			"gM",
			function()
				Snacks.picker.lsp_workspace_symbols()
			end,
			desc = "LSP Workspace Symbols",
		},
		-- {
		-- 	"gp",
		-- 	function()
		-- 		Snacks.picker.diagnostics_buffer()
		-- 	end,
		-- 	desc = "Diagnostics",
		-- },
		{
			"gP",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Diagnostics",
		},
		{
			"<leader>nd",
			function()
				Snacks.notifier.hide()
			end,
		},
		{
			"<leader>na",
			function()
				Snacks.notifier.show_history()
			end,
		},
	},
}
