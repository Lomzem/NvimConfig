---@type LazySpec
return {
	"folke/snacks.nvim",
	lazy = false,
	config = function()
		---@module "snacks"
		---@type snacks.Config
		local opts = {
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
				style = "minimal",
			},
			styles = {
				notification_history = {
					width = 100.0,
					height = 100.0,
				},
			},
		}
		require("snacks").setup(opts)
		vim.api.nvim_create_user_command("Cola", Snacks.picker.colorschemes, {})
	end,
	keys = {
		{
			"<c-p>",
			function()
				local dirname = vim.fn.expand("%:p:h")
				local hidden_ignored_dirs = {
					"/home/lomzem/dotfiles/.config/zsh",
					"/home/lomzem/.config/nvim",
				}
				for _, dir in ipairs(hidden_ignored_dirs) do
					if dirname:find(dir) then
						Snacks.picker.files({ ignored = true, hidden = true })
						return
					end
				end
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
