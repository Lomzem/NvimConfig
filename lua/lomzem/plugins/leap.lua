return {
	{
		"ggandor/leap.nvim",
		config = function()
			-- require("leap").create_default_mappings()
			vim.keymap.set("n", "s", "<Plug>(leap)")
		end,
	},
	{
		"tpope/vim-repeat",
	},
	{
		"echasnovski/mini.jump",
		config = function()
			require("mini.jump").setup()
		end,
	},
}