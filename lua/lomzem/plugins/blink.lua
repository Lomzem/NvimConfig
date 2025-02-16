return {
	"saghen/blink.cmp",
	version = "*",
	lazy = true,
	dependencies = {
		"xzbdmw/colorful-menu.nvim",
		config = function()
			require("blink.cmp").setup({
				completion = {
					menu = {
						draw = {
							-- We don't need label_description now because label and label_description are already
							-- combined together in label by colorful-menu.nvim.
							columns = { { "kind_icon" }, { "label", gap = 1 } },
							components = {
								label = {
									text = function(ctx)
										return require("colorful-menu").blink_components_text(ctx)
									end,
									highlight = function(ctx)
										return require("colorful-menu").blink_components_highlight(ctx)
									end,
								},
							},
						},
					},
				},
			})
		end,
	},
	-- event = "VeryLazy",
	opts = {
		keymap = {
			["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-e>"] = { "hide" },
			["<C-l>"] = { "select_and_accept" },

			["<C-p>"] = { "select_prev", "fallback" },
			["<C-n>"] = { "select_next", "fallback" },
			--
			["<C-u>"] = { "scroll_documentation_up", "fallback" },
			["<C-d>"] = { "scroll_documentation_down", "fallback" },

			["<C-j>"] = { "snippet_forward", "fallback" },
			["<C-k>"] = { "snippet_backward", "fallback" },
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
