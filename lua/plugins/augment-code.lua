return {
	"augmentcode/augment.vim",
	enabled = false,
	lazy = true,
	cmd = "Augment",
	config = function()
		vim.g.augment_workspace_folders = "~/coding/studentmeetingheatmap/"
	end,
	keys = {
		{ "<leader>ac", "<cmd>Augment chat<cr>", mode = { "n", "v" } },
	},
}
