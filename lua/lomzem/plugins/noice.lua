return {
	"folke/noice.nvim",
    lazy = true,
	-- event = "VeryLazy",
	opts = {
		cmdline = {
			view = "cmdline",
		},

		lsp = {
			progress = { enabled = false },
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				-- ["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			lsp_doc_border = true,
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
	keys = {
		{ "<leader>nd", "<cmd>NoiceDismiss<cr>", "n", "[N]oice [D]ismiss" },
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
