return {
	"jake-stewart/multicursor.nvim",
	opts = {},
	keys = {
		{
			"<esc>",
			function()
				require("multicursor-nvim").clearCursors()
			end,
		},
		{
			"<down>",
			function()
				require("multicursor-nvim").matchAddCursor(1)
			end,
			mode = { "n", "x" },
		},
	},
}
