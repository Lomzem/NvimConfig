---@type LazySpec[]
return {
	{
		"nvim-treesitter/nvim-treesitter",
		-- lazy = false,
        event = { "BufReadPost", "BufNewFile" },
		build = ":TSUpdate",
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
