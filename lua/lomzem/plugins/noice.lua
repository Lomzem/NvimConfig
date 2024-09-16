return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{ "<leader>nd", "<cmd>NoiceDismiss<cr>", "n", "[N]oice [D]ismiss" },
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			opts = {
				background_colour = "#000000",
				render = "compact",
				stages = "fade",
			},
		},
	},
}
