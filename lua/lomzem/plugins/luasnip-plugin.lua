return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = "rafamadriz/friendly-snippets",
		config = function()
			require("lomzem.lsp.luasnip_config")
		end,
	},
}
