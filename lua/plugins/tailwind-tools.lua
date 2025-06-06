return {
	"luckasRanarison/tailwind-tools.nvim",
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	ft = "tsx",
	opts = {
		document_color = {
			enabled = true, -- can be toggled by commands
			kind = "background", -- "inline" | "foreground" | "background"
		},
	},
}
