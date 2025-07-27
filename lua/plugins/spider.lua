return {
	"chrisgrieser/nvim-spider",
	lazy = true,
	opts = {},
	keys = {
		{ "w", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "o", "x" } },
		{ "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "o", "x" } },
		{ "b", "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "o", "x" } },
	},
	-- Test Subject: `foo:find`
	-- if foo:find("%d") and foo == bar then print("[foo] has" .. bar) end
}
