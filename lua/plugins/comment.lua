---@type LazySpec
return {
	"numtostr/comment.nvim",
	keys = {
		{ "<c-_>", mode = { "n", "v" } },
		-- { "<c-/>", mode = { "n", "v" } },
	},
	opts = {
		toggler = { line = "<c-_>" },
		opleader = { line = "<c-_>" },
		-- toggler = { line = "<c-/>" },
		-- opleader = { line = "<c-/>" },
		mappings = { basic = true, extra = false },
	},
}
