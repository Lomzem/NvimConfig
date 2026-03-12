---@type LazySpec
return {
	"monkoose/neocodeium",
	cond = false,
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
