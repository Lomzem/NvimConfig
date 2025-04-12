return {
	"nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
	build = ":TSUpdate",
	init = function()
		require("nvim-treesitter.query_predicates")
	end,
	main = "nvim-treesitter.configs",
	opts = {
		sync_install = false,
		auto_install = true,
		-- highlight = { enable = false },
		highlight = { enable = true },
	},
}
