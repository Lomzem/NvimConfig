return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	cmd = "Copilot",
	opts = {
		suggestion = {
			enabled = false,
			auto_trigger = true,
			keymap = {
				accept = "<c-t>",
				next = "<a-]>",
				prev = "<a-[>",
			},
		},
	},
}
