return {
	"supermaven-inc/supermaven-nvim",
	lazy = true,
	-- event = "InsertEnter",
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
