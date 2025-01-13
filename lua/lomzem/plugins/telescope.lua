return {
	"nvim-telescope/telescope.nvim",
    enabled = false,
	dependencies = {
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
		}
	},
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				},
			},
			pickers = {
				find_files = {
					find_command = {
						"fd",
						"--unrestricted",
						"-E",
						"*.git/*",
						"-E",
						"*.jpg",
						"-E",
						"*.png",
						"-E",
						"*.log",
						"-E",
						"*.jpeg",
						"-E",
						"lazy-lock*",
						"-E",
						"*.pdf",
						"-E",
						"*.out",
						"-E",
						"*.o",
					},
				},
			},

			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-c>"] = actions.close,
						["<C-x>"] = actions.file_vsplit,
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>h", require("telescope.builtin").help_tags, {})
		vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files, {})
		vim.keymap.set("n", "<leader>ps", require("telescope.builtin").live_grep, {})
		vim.keymap.set("n", "<leader>cm", require("telescope.builtin").commands, {})
		vim.keymap.set("n", "gm", require("telescope.builtin").marks, {})
		-- require("telescope").load_extension("fzf")

		vim.api.nvim_create_user_command("Cola", function()
			require("telescope.builtin").colorscheme({})
		end, { nargs = "?" })
	end,
}
