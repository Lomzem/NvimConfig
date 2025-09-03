return {
	"folke/noice.nvim",
	event = "VeryLazy",
	cmd = { "NoiceAll" },
	keys = {
		{ "<leader>na", "<cmd>NoiceAll<cr>" },
	},
	opts = {
		commands = {
			all = {
				view = "split",
				opts = {
					enter = true,
					format = "details",
					size = 1000000,
				},
				filter = {},
			},
		},
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = false,
			},
			signature = { enabled = false },
			progress = { enabled = true },
			hover = { silent = true },
		},
		presets = {
			bottom_search = true, -- use a classic bottom cmdline for search
			command_palette = true, -- position the cmdline and popupmenu together
			long_message_to_split = true, -- long messages will be sent to a split
			inc_rename = false, -- enables an input dialog for inc-rename.nvim
			lsp_doc_border = true, -- add a border to hover docs and signature help
		},
		cmdline = { view = "cmdline" },
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
}
