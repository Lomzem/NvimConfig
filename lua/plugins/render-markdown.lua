return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = "markdown",
	dependencies = {
		"latex-lsp/tree-sitter-latex",
		"nvim-tree/nvim-web-devicons",
	},
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
			highlight = "none",
			highlight_inline = "none",
			border = "none",
		},
		html = {
			comment = { conceal = false },
		},
	},
}
