---@type LazySpec
return {
	"echasnovski/mini.move",
	keys = {
		{ "J", mode = "v" },
		{ "K", mode = "v" },
		{ "<m-j>", mode = "n" },
		{ "<m-k>", mode = "n" },
	},
	opts = {
		mappings = {
			-- Visual mode
			down = "J",
			up = "K",
			-- Normal mode
			line_down = "<m-j>",
			line_up = "<m-k>",
		},
	},
}
