return {
	"Wansmer/treesj",
	keys = {
		{
			"<leader>j",
			function()
				require("treesj").toggle()
			end,
			"n",
			"Toggle TreeSJ",
		},
	},
	opts = {
		use_default_keymaps = false,
	},
}
