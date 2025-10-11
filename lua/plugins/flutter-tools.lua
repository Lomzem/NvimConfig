---@type LazySpec
return {
	"nvim-flutter/flutter-tools.nvim",
	ft = "dart",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	---@module "flutter-tools"
	---@type flutter.Config
	opts = {
		closing_tags = {
			enabled = false,
		},
	},
}
