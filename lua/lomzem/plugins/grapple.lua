return {
	"cbochs/grapple.nvim",
	event = "VeryLazy",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons", lazy = true },
	},
	opts = {
		scope = "git", -- also try out "git_branch"
		icons = false, -- setting to "true" requires "nvim-web-devicons"
		status = true,
	},
	keys = {
		{ "<leader>a", "<cmd>Grapple tag<cr>", desc = "Tag a file" },
		{ "<c-e>", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },

		{ "<a-1>", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
		{ "<a-2>", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
		{ "<a-3>", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
		{ "<a-4>", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
	},
}
