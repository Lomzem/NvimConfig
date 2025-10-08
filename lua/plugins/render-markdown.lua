---@type LazySpec
return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"latex-lsp/tree-sitter-latex",
		"nvim-tree/nvim-web-devicons",
	},
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
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
			highlight = "none",
			highlight_inline = "none",
			highlight_language = "none",
			highlight_info = "none",
			language_info = true,
			-- highlight = "none",
			-- highlight_inline = "none",
			border = "none",
		},
		html = {
			comment = { conceal = false },
		},
	},
}
