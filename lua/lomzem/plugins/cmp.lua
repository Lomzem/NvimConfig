return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = "rafamadriz/friendly-snippets",
		config = function()
			require("lomzem.lsp.luasnip_config")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-path",
			"hrsh7th/nvim-cmp",
			"onsails/lspkind.nvim",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = {
					["<C-l>"] = cmp.mapping.confirm({ select = true, behavior = cmp.SelectBehavior.Insert }),
					["<C-e>"] = cmp.mapping.abort({ behavior = cmp.SelectBehavior.Insert }),
					["<C-d>"] = cmp.mapping.scroll_docs(4),
					["<C-u>"] = cmp.mapping.scroll_docs(-4),

					["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
					["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "path" },
					{ name = "buffer" },
					{ name = "luasnip" },
				}),
				view = {
					entries = "custom",
				},
				completion = { completeopt = "menu,menuone,noinsert" },
				sorting = {
					comparators = {
						cmp.config.compare.offset,
						cmp.config.compare.exact,
						cmp.config.compare.recently_used,
						require("clangd_extensions.cmp_scores"),
						cmp.config.compare.kind,
						cmp.config.compare.sort_text,
						cmp.config.compare.length,
						cmp.config.compare.order,
					},
				},
				formatting = {
					fields = { "abbr", "menu", "kind" },
					format = function(entry, vim_item)
						if vim.tbl_contains({ "path" }, entry.source.name) then
							local icon, hl_group =
								require("nvim-web-devicons").get_icon(entry:get_completion_item().label)
							if icon then
								vim_item.kind = icon
								vim_item.kind_hl_group = hl_group
								return vim_item
							end
						end
						return require("lspkind").cmp_format({ with_text = false })(entry, vim_item)
					end,
				},
			})

			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

			vim.opt.pumheight = 10

			-- cmp.setup.cmdline(":", {
			-- 	mapping = {
			-- 		["<C-j>"] = {
			-- 			c = function(fallback)
			-- 				if cmp.visible() then
			-- 					cmp.select_next_item()
			-- 				else
			-- 					fallback()
			-- 				end
			-- 			end,
			-- 		},
			-- 		["<C-k>"] = {
			-- 			c = function(fallback)
			-- 				if cmp.visible() then
			-- 					cmp.select_prev_item()
			-- 				else
			-- 					fallback()
			-- 				end
			-- 			end,
			-- 		},
			-- 		["<C-l>"] = {
			-- 			c = function(fallback)
			-- 				if not require("cmp").confirm({ select = true }) then
			-- 					fallback()
			-- 				end
			-- 			end,
			-- 		},
			-- 	},
			-- 	sources = cmp.config.sources({
			-- 		{ name = "path" },
			-- 	}, {
			-- 		{
			-- 			name = "cmdline",
			-- 			option = {
			-- 				ignore_cmds = { "Man", "!" },
			-- 			},
			-- 		},
			-- 	}),
			-- })
		end,
	},
}
