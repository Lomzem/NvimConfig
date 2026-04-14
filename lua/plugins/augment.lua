---@type LazySpec
return {
	"augmentcode/augment.vim",
	cond = false,
	event = "VeryLazy",
	config = function()
		vim.g.augment_workspace_folders = {
			"/home/lomzem/darkreader/darkreader",
		}
	end,
}
