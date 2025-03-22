return {
	"supermaven-inc/supermaven-nvim",
    event = "InsertEnter",
	opts = {
		keymaps = {
			accept_suggestion = "<C-t>",
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
