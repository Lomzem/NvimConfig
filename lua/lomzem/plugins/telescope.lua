return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
			},
		},
		opts = {
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
		},
		keys = {
			{ "<C-p>", require("telescope.builtin").find_files, "Telescope Find Files" },
			{ "<leader>pg", require("telescope.builtin").git_files, "Telescope Git Files" },
			{ "<leader>ps", require("telescope.builtin").live_grep, "Telescope Live Grep" },
			{ "<leader>cm", require("telescope.builtin").commands, "Telescope Commands" },
		},
		config = function()
			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<C-k>"] = require("telescope.actions").move_selection_previous,
							["<C-j>"] = require("telescope.actions").move_selection_next,
							["<C-c>"] = require("telescope.actions").close,
						},
					},
				},
			})

			require("telescope").load_extension("fzf")

			vim.api.nvim_create_user_command("Cola", function()
				require("telescope.builtin").colorscheme({})
			end, { nargs = "?" })
		end,
	},
}
