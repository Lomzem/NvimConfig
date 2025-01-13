return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true,
		},
		keymaps = {
			["<C-s>"] = { false, desc = "Oil Save" },
		},
	},
	dependencies = { "echasnovski/mini.icons" },
}
