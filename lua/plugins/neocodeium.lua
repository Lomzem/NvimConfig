---@class NeocodeiumConfig
--- When set to `true`, autosuggestions are disabled.
--- Use `require'neodecodeium'.cycle_or_complete()` to show suggestions manually
---@field manual boolean?
---Set to `true` to disable some non-important messages, like "NeoCodeium: server started..."
---@field silent boolean?

---@type LazySpec
return {
	"monkoose/neocodeium",
	event = "InsertEnter",
	---@type NeocodeiumConfig
	opts = {
		manual = true,
		silent = true,
	},
	keys = {
		{
			"<a-'>",
			mode = "i",
			function()
				require("neocodeium").cycle_or_complete(1)
			end,
		},
		{
			"<right>",
			mode = "i",
			function()
				require("neocodeium").accept()
			end,
		},
	},
}
