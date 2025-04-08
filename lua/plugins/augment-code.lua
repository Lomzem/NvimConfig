return {
	"augmentcode/augment.vim",
	lazy = true,
	enabled = false,
	cmd = "Augment",
	config = function()
		vim.g.augment_workspace_folders = "~/coding/CSCIChico/csci440/CSCI340-Virtual-Paging-Assignment/paging-handout"
	end,
	keys = {
		{ "<leader>ac", "<cmd>Augment chat<cr>", mode = { "n", "v" } },
	},
}
