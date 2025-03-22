vim.g.mapleader = " "

-- General
vim.keymap.set("v", "+", "<Esc>ggVG")

vim.keymap.set(
	"n",
	"y=",
	"<cmd>silent exec '!wl-copy < %'<CR><cmd>echo 'Successfully copied all!'<CR>"
) -- Copy all
vim.keymap.set("n", "<A-q>", "<cmd>q<CR>") -- Quit
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>") -- Quit
vim.keymap.set("i", "<C-c>", "<Esc>") -- Remap Ctrl+C to Esc

-- Quickfix
vim.keymap.set("n", "<A-n>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<A-p>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<A-d>", "<cmd>cclose<CR>")

vim.keymap.set("n", "<leader>z=", "1z=") --spellcheck

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>") -- Save
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>") -- Save
-- vim.keymap.set("n", ";w", "<Esc><cmd>w<CR>") -- Save
vim.keymap.set("n", "<leader>w", "<Esc><cmd>w<CR>") -- Save

-- Centering
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Centers page up
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Centers page d-own
vim.keymap.set("n", "n", "nzzzv") -- Centers search forward
vim.keymap.set("n", "N", "Nzzzv") -- Centers search backwards
vim.keymap.set("n", "<C-i>", "<C-i>zz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-t>", "<C-t>zz") -- Centers tag stack

-- vim.keymap.set("n", ";", ":") -- Who likes pressing shift?

-- Clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- Saves to system clipboard
vim.keymap.set("n", "Y", "yy")

-- Line editing shortcut
vim.keymap.set("n", "D", "dd")
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "J", "mzJ`z") -- Keeps cursor in place
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- Replace current word
vim.keymap.set("i", "<C-x>", "<C-o>x")

-- front/back
vim.keymap.set({ "n", "v", "o" }, "H", "_")
vim.keymap.set({ "n", "v", "o" }, "L", "$")

-- Indenting
vim.keymap.set("n", "<", "<<")
vim.keymap.set("n", ">", ">>")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Commands
vim.keymap.set("n", "<leader>lz", "<cmd>Lazy<CR>")
