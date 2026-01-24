---@type LazySpec
return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"latex-lsp/tree-sitter-latex",
		"nvim-tree/nvim-web-devicons",
	},
	ft = {
		"markdown",
		"markdown_inline",
	},
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		file_types = { "markdown", "markdown_inline", "tasks" },
		anti_conceal = { enabled = false },
		render_modes = { "n", "i", "v", "c" },
		heading = {
			icons = {},
			sign = false,
			position = "inline",
			backgrounds = {
				"",
				"",
				"",
				"",
				"",
				"",
			},
		},
		code = {
			sign = false,
			style = "normal",
			language = true,
			language_icon = true,
			language_name = false,
			-- highlight = "none",
			-- highlight_inline = "none",
			-- highlight_language = "none",
			-- highlight_info = "none",
			language_info = true,
			-- highlight = "none",
			-- highlight_inline = "none",
			-- border = "none",
		},
		html = {
			comment = { conceal = false },
		},
	},
}
