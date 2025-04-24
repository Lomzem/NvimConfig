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
			"<leader><down>",
			function()
				require("multicursor-nvim").lineAddCursor(1)
			end,
			mode = { "n", "x" },
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
