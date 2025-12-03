---@type LazySpec[]
return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			ensure_installed = {
				"markdown",
				"markdown_inline",
				"r",
				"rnoweb",
				"yaml",
				"latex",
				"csv",
			},
		},
	},
}
