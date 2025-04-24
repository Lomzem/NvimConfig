return {
	"augmentcode/augment.vim",
	enabled = true,
	lazy = true,
	cmd = "Augment",
	config = function()
		vim.g.augment_workspace_folders = "~/coding/djsongmatch/"
	end,
	keys = {
		{ "<leader>ac", "<cmd>Augment chat<cr>", mode = { "n", "v" } },
	},
}
