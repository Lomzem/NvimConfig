return {
	"augmentcode/augment.vim",
	lazy = true,
	cmd = "Augment",
	config = function()
		vim.g.augment_workspace_folders = "~/djsongmatch/"
	end,
	keys = {
		{ "<leader>ac", "<cmd>Augment chat<cr>", mode = { "n", "v" } },
	},
}
