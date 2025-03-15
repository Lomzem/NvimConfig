return {
	"saghen/blink.cmp",
	version = "*",
	lazy = true,
	-- event = "VeryLazy",
	opts = {
		keymap = {
			preset = "none",

			["<c-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<c-e>"] = { "hide" },
			["<c-l>"] = { "select_and_accept" },

			["<c-k>"] = { "select_prev", "fallback" },
			["<c-j>"] = { "select_next", "fallback" },

			["<c-u>"] = { "scroll_documentation_up", "fallback" },
			["<c-d>"] = { "scroll_documentation_down", "fallback" },
		},

		completion = {
			-- documentation = { auto_show = true, auto_show_delay_ms = 200 },
			menu = { border = "single" },
			-- documentation = { window = { border = "single" } },
		},

		cmdline = {
			enabled = true,
		},

		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = "mono",
		},

		snippets = { preset = "luasnip" },

		sources = {
			default = { "lsp", "path", "buffer", "snippets" },
			-- default = { "lsp", "path", "snippets" },
		},

		-- Experimental signature help support
		signature = { enabled = false },
	},
	opts_extend = { "sources.default" },
}
