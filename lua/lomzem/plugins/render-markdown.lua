return {
	"MeanderingProgrammer/render-markdown.nvim",
    event = "VeryLazy",
	ft = "markdown",
	dependencies = {
        { "latex-lsp/tree-sitter-latex" , lazy=true},
        { "nvim-tree/nvim-web-devicons", lazy=true},
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
		bullet = {
			right_pad = 1,
		},
	},
}
