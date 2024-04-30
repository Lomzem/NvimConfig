return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")

			telescope.setup({
				pickers = {
					find_files = {
						find_command = {
							"fd",
							"-t",
							"f",
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
			})

			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>cmd", builtin.commands, {})

			vim.api.nvim_create_user_command("Cola", function()
				-- builtin.colorscheme({
				builtin.colorscheme({})
				-- enable_preview = true,
				-- })
			end, { nargs = "?" })

			local actions = require("telescope.actions")
			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous,
							["<C-j>"] = actions.move_selection_next,
							["<C-c>"] = actions.close,
						},
					},
				},
			})

			require("telescope").load_extension("fzy_native")
		end,
	},
	{ "nvim-telescope/telescope-fzy-native.nvim" },
}
