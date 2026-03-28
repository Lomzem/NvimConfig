return {
	"luckasRanarison/tailwind-tools.nvim",
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	ft = { "tsx", "jsx", "html" },
	opts = {
		document_color = {
			enabled = true, -- can be toggled by commands
			kind = "inline", -- "inline" | "foreground" | "background"
		},
	},
}
