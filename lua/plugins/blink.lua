return {
	"saghen/blink.cmp",
	version = "*",
	event = "InsertEnter",
	opts = {
		keymap = {
			preset = "none",

			["<c-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<c-l>"] = { "select_and_accept" },

			["<c-k>"] = { "select_prev", "fallback" },
			["<c-j>"] = { "select_next", "fallback" },

			["<c-u>"] = { "scroll_documentation_up", "fallback" },
			["<c-d>"] = { "scroll_documentation_down", "fallback" },

			["<c-e>"] = { "show_signature", "hide_signature", "fallback" },
		},

		completion = {
			menu = {
				border = "single",
				draw = {
					treesitter = { "lsp" },
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
			},
		},

		cmdline = {
			enabled = true,
			keymap = {
				preset = "none",
				["<c-l>"] = { "select_and_accept" },
				["<c-k>"] = { "select_prev", "fallback" },
				["<c-j>"] = { "select_next", "fallback" },
			},
			completion = { menu = { auto_show = true } },
		},

		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = "mono",
		},

		snippets = { preset = "luasnip" },

		sources = {
			default = { "snippets", "lsp", "path", "buffer" },
		},

		signature = {
			enabled = true,
		},
	},
	opts_extend = { "sources.default" },
}
