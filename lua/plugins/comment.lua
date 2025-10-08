---@type LazySpec
return {
	"numtostr/comment.nvim",
	keys = {
		{ "<c-_>", mode = { "n", "v" } },
	},
	opts = {
		toggler = { line = "<c-_>" },
		opleader = { line = "<c-_>" },
		mappings = { basic = true, extra = false },
	},
}
