return {
	"chentoast/marks.nvim",
	event = "VeryLazy",
	keys = {
		"m",
		"dm",
		{
			"<a-m>",
			"<Plug>(Marks-next)zz",
		},
	},
	opts = {
		mappings = {
			set_next = "m,",
			delete_buf = "dm<leader>",
			-- next = "<a-m>",
		},
	},
}
