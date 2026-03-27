---@type LazySpec
return {
	"karb94/neoscroll.nvim",
	event = "VeryLazy",
	opts = {
		duration_multiplier = 0.3,
		easing = "quad",
		mappings = {
			"<C-u>",
			"<C-d>",
			"<C-b>",
			"<C-f>",
			"<C-y>",
			-- "<C-e>",
			"zt",
			"zz",
			"zb",
		},
	},
}
