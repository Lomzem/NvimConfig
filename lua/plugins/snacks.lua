return {
	"folke/snacks.nvim",
	lazy = true,
	config = function()
		vim.api.nvim_create_user_command("Cola", Snacks.picker.colorschemes, {})
	end,
	cmd = { "Cola" },
	opts = {
		picker = {
			enabled = true,
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
		quickfile = { enabled = true },
		input = { enabled = true },
		-- notifier = { enabled = true },
		scope = { enabled = true },
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
				vim.cmd("NoiceDismiss")
			end,
		},
	},
}
