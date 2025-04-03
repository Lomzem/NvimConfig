return {
	"supermaven-inc/supermaven-nvim",
	lazy = true,
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
