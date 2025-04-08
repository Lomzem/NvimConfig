return {
	"supermaven-inc/supermaven-nvim",
	-- event = "VeryLazy",
	-- lazy = true,
	enabled = false,
	opts = {
		keymaps = {
			accept_suggestion = "<c-t>",
			clear_suggestion = nil,
			accept_word = nil,
		},
	},
	cmd = {
		"SupermavenStart",
		"SupermavenStop",
		"SupermavenToggle",
	},
}
