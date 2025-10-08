return {
	"stevearc/oil.nvim",
	enabled = true,
	opts = {
		view_options = {
			show_hidden = true,
		},
		keymaps = {
			["<C-s>"] = { false, desc = "Oil Save" },
			["<C-p>"] = function()
				Snacks.picker.files()
			end,
		},
	},
	cmd = "Oil",
	-- keys = {
	-- 	{ "<leader>pv", "<cmd>Oil<cr>" },
	-- },
	dependencies = "echasnovski/mini.icons",
}
