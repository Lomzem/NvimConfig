return {
	"echasnovski/mini.surround",
	opts = {
		mappings = {
			add = "S", -- Add surrounding in Normal and Visual modes
			delete = "ds", -- Delete surrounding
			find = "", -- Find surrounding (to the right) default: sf
			find_left = "", -- Find surrounding (to the left) default: sF
			highlight = "", -- Highlight surrounding default: ysh
			replace = "cs", -- Replace surrounding
			update_n_lines = "", -- Update `n_lines`lj default: sn

			suffix_last = "l", -- Suffix to search with "prev" method
			suffix_next = "n", -- Suffix to search with "next" method
		},
	},
}
