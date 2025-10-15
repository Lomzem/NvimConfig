---@type LazySpec
return {
	"Fildo7525/pretty_hover",
	-- event = "LspAttach",
	---@module "pretty_hover"
	---@type PrettyHoverConfig
	opts = {
		border = "none",
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
