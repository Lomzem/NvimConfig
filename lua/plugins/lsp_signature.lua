---@type LazySpec
return {
	"ray-x/lsp_signature.nvim",
	event = "LspAttach",
	cond = false,
	opts = {
		bind = false,
		floating_window = true,
		extra_trigger_chars = {},
		handler_opts = {
			---@type "double" | "rounded" | "single" | "shadow" | "none" | table
			border = "none",
		},
		toggle_key = "<c-e>",
		hint_enable = false,
	},
}
