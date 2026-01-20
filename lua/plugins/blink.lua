---@type LazySpec
return {
	"saghen/blink.cmp",
	version = "*",
	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = {
		{
			"saghen/blink.compat",
			opts = {},
		},
		"nvim-tree/nvim-web-devicons",
		"onsails/lspkind.nvim",
		"L3MON4D3/LuaSnip",
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
			menu = {
				auto_show = true,
				border = "none",
				direction_priority = { "s" },
				draw = {
					align_to = "cursor",
					treesitter = { "lsp" },
				},
				scrollbar = false,
			},
			documentation = {
				auto_show = false,
				window = {
					border = "none",
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
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "normal",
		},

		snippets = { preset = "luasnip" },

		sources = {
			default = { "snippets", "lsp", "path" },
			per_filetype = {
				conf = { "fonts", "snippets", "lsp", "path" },
				lua = { "nvim_colorschemes", "lazydev", "snippets", "lsp", "path" },
			},
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
				fonts = {
					name = "fonts",
					module = "custom-cmp.fonts",
					async = true,
					should_show_items = function(ctx, items)
						local keyword = require("blink.cmp.config").completion.keyword
						local line = ctx.get_line()
						line = vim.trim(line)
						return vim.startswith(line, "font_family")
					end,
				},
				nvim_colorschemes = {
					name = "nvim_colorschemes",
					module = "custom-cmp.nvim_colorschemes",
					async = true,
					should_show_items = function(ctx, items)
						local line = ctx.get_line()
						local start = string.find(line, "vim.cmd.colorscheme")
						return start ~= nil
					end,
				},
			},
		},

		signature = {
			enabled = true,
			trigger = {
				enabled = false,
				show_on_accept = false,
				show_on_insert = false,
			},
		},
	},
	opts_extend = { "sources.default" },
}
