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
vim.keymap.set("n", "<a-w>", "<c-z>") -- Suspend
vim.keymap.set("n", "<a-q>", "<cmd>q<CR>") -- Quit
vim.keymap.set("i", "<c-c>", "<esc>") -- Remap Ctrl+C to Esc

-- These mappings control the size of splits (height/width)
vim.keymap.set("n", "<m-,>", "<c-w>5<")
vim.keymap.set("n", "<m-.>", "<c-w>5>")
vim.keymap.set("n", "<m-t>", "<c-w>+")
vim.keymap.set("n", "<m-s>", "<c-w>-")

vim.keymap.set("n", "z=", "1z=") --spellcheck

vim.keymap.set("n", "<c-s>", "<cmd>silent w<cr>") -- Save
vim.keymap.set("i", "<c-s>", "<esc><cmd>silent w<cr>") -- Save
vim.keymap.set("n", "<cr>", "zz")

-- Comment and preserve cursor position
vim.keymap.set("n", "<c-_>", ":let p=getpos('.')<CR>gcc:call setpos('.', p)<CR>", { remap = true })
vim.keymap.set("v", "<c-_>", "gc", { remap = true })
vim.keymap.set("n", "<c-/>", ":let p=getpos('.')<CR>gcc:call setpos('.', p)<CR>", { remap = true })
vim.keymap.set("v", "<c-/>", "gc", { remap = true })

-- Centering
vim.keymap.set("n", "<c-u>", "<c-u>zz") -- Centers page up
vim.keymap.set("n", "<c-d>", "<c-d>zz") -- Centers page d-own
vim.keymap.set("n", "n", "nzzzv") -- Centers search forward
vim.keymap.set("n", "N", "Nzzzv") -- Centers search backwards

-- Clipboard
vim.keymap.set({ "n", "v", "x" }, "<leader>y", '"+y') -- Saves to system clipboard
vim.keymap.set("n", "Y", "yy")

-- Line editing shortcut
vim.keymap.set("n", "D", "dd")
vim.keymap.set("n", "d%", "v%D")

-- jk center
vim.keymap.set("n", "G", "G")
vim.keymap.set("n", "J", "<cmd>let p=getpos('.')<bar>join<bar>call setpos('.', p)<cr>") -- Keeps cursor in place
vim.keymap.set("n", "<leader>s", ":%s/\\<<c-r><c-w>\\>/<c-r><c-w>/gI<Left><Left><Left>") -- Replace current word

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

-- Indenting
vim.keymap.set("n", "<", "<<")
vim.keymap.set("n", ">", ">>")

-- Keep selected
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Commands
vim.keymap.set("n", "<leader>lz", "<cmd>Lazy<CR>")
