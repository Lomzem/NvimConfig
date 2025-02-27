return {
	"saghen/blink.cmp",
	version = "*",
	lazy = true,
	-- event = "VeryLazy",
	opts = {
		keymap = {
			["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-e>"] = { "hide" },
			["<C-l>"] = { "select_and_accept" },

			["<C-k>"] = { "select_prev", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },
			--
			["<C-u>"] = { "scroll_documentation_up", "fallback" },
			["<C-d>"] = { "scroll_documentation_down", "fallback" },

			-- ["<C-j>"] = { "snippet_forward", "fallback" },
			-- ["<C-k>"] = { "snippet_backward", "fallback" },
		},

		completion = {
			-- documentation = { auto_show = true, auto_show_delay_ms = 200 },
			menu = { border = "single" },
			documentation = { window = { border = "single" } },
		},
		signature = { window = { border = "single" } },

		-- snippets = { preset = "luasnip" },
		snippets = nil,

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			-- default = { "lsp", "path", "snippets" },
		},

		-- Experimental signature help support
		-- signature = { enabled = false },
	},
	opts_extend = { "sources.default" },
}
