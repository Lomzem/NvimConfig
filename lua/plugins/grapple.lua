return {
	"cbochs/grapple.nvim",
	lazy = true,
	opts = {
		scope = "cwd",
		icons = false,
		status = true,
	},
	keys = {
		{ "<leader>a", "<cmd>Grapple tag<cr>", desc = "Tag a file" },
		{ "<leader>A", "<cmd>Grapple reset<cr><cmd>Grapple tag<cr>", desc = "Clears list" },
		{ "<c-e>", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },

		{ "<a-1>", "<cmd>Grapple select index=1<cr>" },
		{ "<a-2>", "<cmd>Grapple select index=2<cr>" },
		{ "<a-3>", "<cmd>Grapple select index=3<cr>" },
		{ "<a-4>", "<cmd>Grapple select index=4<cr>" },
		{ "<a-5>", "<cmd>Grapple select index=5<cr>" },
		{ "<a-6>", "<cmd>Grapple select index=6<cr>" },
		{ "<a-7>", "<cmd>Grapple select index=7<cr>" },
		{ "<a-8>", "<cmd>Grapple select index=8<cr>" },
		{ "<a-9>", "<cmd>Grapple select index=9<cr>" },
		{ "<a-p>", "<cmd>echo 'hi'" },
	},
}
