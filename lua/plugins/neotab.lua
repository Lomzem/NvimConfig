---@type LazySpec
return {
	"kawre/neotab.nvim",
	event = "InsertEnter",
	---@module "neotab"
	---@type ntab.user.config
	opts = {
		tabkey = "",
		reverse_key = "",
	},
}
