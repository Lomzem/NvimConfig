return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	cmd = "Copilot",
	opts = {
		suggestion = {
			enabled = false,
			auto_trigger = true,
			keymap = {
				accept = "<right>",
				next = "<a-]>",
				prev = "<a-[>",
			},
		},
	},
}
