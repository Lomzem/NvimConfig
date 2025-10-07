---@type LazySpec
return {
	"Fildo7525/pretty_hover",
	lazy = true,
	event = "LspAttach",
	---@module "pretty_hover"
	---@type PrettyHoverConfig
	opts = {
		border = "rounded",
	},
	keys = {
		{
			"K",
			function()
				require("pretty_hover").hover()
			end,
		},
	},
}
