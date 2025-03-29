return {
	"folke/noice.nvim",
	event = "VeryLazy",
	cmd = { "Noice", "NoiceDismiss" },
	opts = {
		cmdline = {
			view = "cmdline",
		},

		lsp = {
			signature = { auto_open = false },
			progress = { enabled = true },
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				-- ["cmp.entry.get_documentation"] = true,
			},
		},
		bottom_search = true,
		presets = {
			lsp_doc_border = true,
			long_message_to_split = true,
			inc_rename = false,
		},
		routes = {
			{
				filter = {
					-- hide search virtual text
					event = "msg_show",
					kind = "search_count",
				},
				opts = { skip = true },
			},
			{
				filter = {
					event = "msg_show",
					kind = "",
					find = "written",
				},
				opts = { skip = true },
			},
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			opts = {
				background_colour = "#000000",
				render = "compact",
				stages = "fade",
			},
		},
	},
}
