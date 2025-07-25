return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	main = "nvim-silicon",
	opts = {
		theme = "poimandres",
		line_offset = function(args)
			return args.line1
		end,
	},
	keys = {
		{
			"<leader>sc",
			mode = { "v" },
			function()
				require("nvim-silicon").shoot()
			end,
		},
	},
}
