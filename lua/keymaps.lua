vim.g.mapleader = " "

-- General
vim.keymap.set("v", "+", "<esc>ggVG")

vim.keymap.set("n", "y=", function()
	local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
	local joined_lines = vim.fn.join(lines, "\n")
	vim.fn.setreg("+", joined_lines)
	vim.notify("Copied to clipboard", vim.log.levels.INFO)
end) -- Copy all
vim.keymap.set("n", "<leader>q", "<c-z>") -- Suspend
vim.keymap.set("n", "<a-q>", "<cmd>q<CR>") -- Quit
vim.keymap.set("i", "<c-c>", "<esc>") -- Remap Ctrl+C to Esc

-- Quickfix
vim.keymap.set("n", "<A-n>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<A-p>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<A-d>", "<cmd>cclose<CR>")

vim.keymap.set("n", "z=", "1z=") --spellcheck

vim.keymap.set("n", "<c-s>", "<cmd>silent w<cr>") -- Save
vim.keymap.set("i", "<c-s>", "<esc><cmd>silent w<cr>") -- Save
-- vim.keymap.set("n", ";w", "<esc><cmd>silent w<cr>", {silent=true}) -- Save
vim.keymap.set("n", "<leader>w", "<esc><cmd>silent w<cr>") -- Save
vim.keymap.set("n", "<leader>x", "<esc><cmd>silent x<cr>") -- Save
vim.keymap.set("n", "<cr>", "zz")

-- Centering
vim.keymap.set("n", "<c-u>", "<c-u>zz") -- Centers page up
vim.keymap.set("n", "<c-d>", "<c-d>zz") -- Centers page d-own
vim.keymap.set("n", "n", "nzzzv") -- Centers search forward
vim.keymap.set("n", "N", "Nzzzv") -- Centers search backwards
-- vim.keymap.set("n", "<c-i>", "<c-i>zz")
-- vim.keymap.set("n", "<c-o>", "<c-o>zz")
-- vim.keymap.set("n", "<c-t>", "<c-t>zz") -- Centers tag stack

-- vim.keymap.set("n", ";", ":") -- Who likes pressing shift?

-- Clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- Saves to system clipboard
vim.keymap.set("n", "Y", "yy")

-- Line editing shortcut
vim.keymap.set("n", "D", "dd")
-- vim.keymap.set("n", "dd", "d$")

-- jk center
-- vim.keymap.set("n", "j", "jzz")
-- vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "G", "G")
vim.keymap.set("n", "J", "<cmd>let p=getpos('.')<bar>join<bar>call setpos('.', p)<cr>") -- Keeps cursor in place
vim.keymap.set("n", "<leader>s", ":%s/\\<<c-r><c-w>\\>/<c-r><c-w>/gI<Left><Left><Left>") -- Replace current word
-- vim.keymap.set("i", "<c-x>", "<c-o>x")

-- jk jumplist
vim.keymap.set({ "n", "x" }, "j", function()
	if vim.v.count > 1 then
		return "m'" .. vim.v.count .. "j"
	end
	return "j"
end, { expr = true })
vim.keymap.set({ "n", "x" }, "k", function()
	if vim.v.count > 1 then
		return "m'" .. vim.v.count .. "k"
	end
	return "k"
end, { expr = true })

-- front/back
vim.keymap.set({ "n", "v", "o" }, "H", "_")
vim.keymap.set({ "n", "v", "o" }, "L", "$")
-- vim.keymap.set("n", "H", "3Hzz")
-- vim.keymap.set("n", "L", "3Lzz")

-- Indenting
vim.keymap.set("n", "<", "<<")
vim.keymap.set("n", ">", ">>")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Commands
vim.keymap.set("n", "<leader>lz", "<cmd>Lazy<CR>")

-- Marks
-- vim.keymap.set("n", "<leader>1", "`a")
-- vim.keymap.set("n", "<leader>2", "`b")
-- vim.keymap.set("n", "<leader>3", "`c")
