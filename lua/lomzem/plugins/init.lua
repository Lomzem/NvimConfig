return {
	-- Must-haves
	{
		"windwp/nvim-autopairs",
		event = "insertenter",
		opts = { check_ts = true, enable_afterquote = false, enable_bracket_in_quote = false },
	},
	{
		"nvim-lua/plenary.nvim",
		lazy = true, -- Needed for everything
	},

	-- Lsp
	"neovim/nvim-lspconfig",
	{ "rust-lang/rust.vim", ft = "rust" },
	{ "simrat39/rust-tools.nvim", ft = "rust" },
	{
		"p00f/clangd_extensions.nvim",
		ft = "cpp",
		opts = {
			inlay_hints = {
				inline = false,
			},
		},
	},

	-- Misc
	"ThePrimeagen/vim-be-good",
}
