---@type LazySpec
return {
	"saghen/blink.cmp",
	version = "*",
	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = {
		{ "saghen/blink.compat", lazy = true, opts = {} },
	},
	---@module "blink.cmp"
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "none",

			["<c-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<c-q>"] = { "hide" },
			["<c-l>"] = { "select_and_accept" },

			["<c-k>"] = { "select_prev", "fallback" },
			["<c-j>"] = { "select_next", "fallback" },

			["<c-u>"] = { "scroll_documentation_up", "fallback" },
			["<c-d>"] = { "scroll_documentation_down", "fallback" },

			["<c-e>"] = { "show_signature", "hide_signature", "fallback" },
		},

		completion = {
			-- list = {
			-- max_items = 3,
			-- },
			menu = {
				border = "rounded",
				draw = {
					treesitter = { "lsp" },
				},
			},
			documentation = {
				auto_show = false,
				window = {
					border = "rounded",
				},
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
			default = { "lazydev", "snippets", "lsp", "path", "buffer" },
			per_filetype = {
				rmd = { "cmp_r", "snippets", "lsp", "path", "buffer" },
			},
			providers = {
				dadbod = { module = "vim_dadbod_completion.blink" },
				cmp_r = {
					name = "cmp_r",
					module = "blink.compat.source",
				},
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
			},
		},

		signature = {
			enabled = true,
		},
	},
	opts_extend = { "sources.default" },
}
