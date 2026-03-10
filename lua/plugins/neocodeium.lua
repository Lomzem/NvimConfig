---@type LazySpec
return {
	"monkoose/neocodeium",
	event = "InsertEnter",
	opts = {},
	keys = {
		{
			"<right>",
			mode = "i",
			function()
				require("neocodeium").accept()
			end,
		},
	},
}
