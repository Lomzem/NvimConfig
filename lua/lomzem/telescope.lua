-- require('telescope').load_extension('fzf')

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
vim.keymap.set("n", "<leader>cmd", builtin.commands, {})
vim.keymap.set("n", "<leader>test", builtin.help_tags, {})
