---@type LazySpec
return {
	"max397574/colortils.nvim",
	lazy = false,
	opts = {
		border = "none",
		mappings = {
			replace_choose_format = "<cr>",
			set_register_default_format = "<m-cr>",
			-- export the current color to a different tool
			export = "<tab>",
		},
	},
	cmd = { "Colortils" },
	keys = {
		-- { "<leader>v", "<cmd>Colortils picker<cr>" },
		{ "<leader>v", "<cmd>Colortils darken<cr>" },
	},
}
