return {
	"augmentcode/augment.vim",
	enabled = true,
	cmd = "Augment",
	config = function()
		vim.g.augment_workspace_folders = {
			"/home/lomzem/dotfiles/.config/zsh",
		}
	end,
	keys = {
		{ "<leader>ac", "<cmd>Augment chat<cr>", mode = { "n", "v" } },
	},
}
