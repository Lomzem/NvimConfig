return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	cmd = "Copilot",
	opts = {
		suggestion = {
			enabled = true,
			auto_trigger = true,
			keymap = {
				accept = "<c-t>",
				next = "<a-]>",
				prev = "<a-[>",
			},
		},
	},
}
