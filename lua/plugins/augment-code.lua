return {
	"augmentcode/augment.vim",
	lazy = true,
	cmd = "Augment",
	config = function()
		vim.g.augment_workspace_folders = "~/.config/nvim"
	end,
	keys = {
		{ "<leader>ac", "<cmd>Augment chat<cr>", mode = { "n", "v" } },
	},
}
