return {
	"epwalsh/obsidian.nvim",
	ft = "markdown",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "Chico Obsidian",
				path = "~/coding/chico-obsidian",
			},
		},
		completion = {
			nvim_cmp = true,
			min_chars = 2,
		},
	},
}
