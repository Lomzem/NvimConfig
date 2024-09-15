return {
	-- Must-haves
	{
		"windwp/nvim-autopairs",
		event = "insertenter",
		opts = { check_ts = true, enable_afterquote = false, enable_bracket_in_quote = false },
	},
	{ "nvim-lua/plenary.nvim" }, -- Needed for everything

	-- Lsp
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "stevearc/conform.nvim" },
	{ "rust-lang/rust.vim", ft = "rust" },
	{ "simrat39/rust-tools.nvim", ft = "rust" },
	{
		"p00f/clangd_extensions.nvim",
		ft = "cpp",
		config = function()
			local cmp = require("cmp")
			cmp.setup({
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
			})
		end,
	},

	-- Autocomplete
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/nvim-cmp", dependencies = { "onsails/lspkind.nvim" } },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "L3MON4D3/LuaSnip", dependencies = "rafamadriz/friendly-snippets" },

	-- Misc
	{ "ThePrimeagen/vim-be-good" },
}
