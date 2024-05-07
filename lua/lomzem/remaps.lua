vim.g.mapleader = " "

-- General
vim.keymap.set("n", "<C-a>", "ggVG") -- Select all
vim.keymap.set("n", "y=", "<cmd>silent exec '!xclip -selection clipboard -i %'<CR>") -- Copy all
vim.keymap.set("n", "<A-q>", "<cmd>q<CR>") -- Quit
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>") -- Quit
vim.keymap.set("i", "<C-c>", "<Esc>") -- Remap Ctrl+C to Esc

-- Quickfix
vim.keymap.set("n", "<leader>cn", "<cmd>cnext<CR>")
vim.keymap.set("n", "<leader>cp", "<cmd>cprev<CR>")

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>") -- Save
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>") -- Save
vim.keymap.set("n", ";w", "<Esc><cmd>w<CR>") -- Save
vim.keymap.set("n", "<leader>w", "<Esc><cmd>w<CR>") -- Save

vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Centers page up
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Centers page down
vim.keymap.set("n", "n", "nzzzv") -- Centers search forward
vim.keymap.set("n", "N", "Nzzzv") -- Centers search backwards
-- vim.keymap.set("n", "j", "jzz")                 -- Centers down
-- vim.keymap.set("n", "k", "kzz")                 -- Centers up

vim.keymap.set("n", "<C-t>", "<C-t>zz") -- Centers tag stack
vim.keymap.set("n", "<leader>pv", "<CMD>Ex<CR><CMD>set rnu<CR>") -- Opens Netrw
vim.keymap.set("n", ";", ":") -- Who likes pressing shift?

-- Clipboard
vim.keymap.set("n", "<leader>y", '"+y') -- Saves to system clipboard
vim.keymap.set("v", "<leader>y", '"+y') -- Saves to system clipboard
vim.keymap.set("n", "Y", "yy")

-- Line editing shortcut
vim.keymap.set("n", "D", "dd")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z") -- Keeps cursor in place
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- Replace current word

-- front/back
vim.keymap.set({ "n", "v" }, "H", "_")
vim.keymap.set({ "n", "v" }, "L", "$")

-- Save my left pinky
vim.keymap.set("n", "<A-a>", "A")

-- Indenting
vim.keymap.set("n", "<", "<<")
vim.keymap.set("n", ">", ">>")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Commands
vim.keymap.set("n", "<leader>lz", "<cmd>Lazy<CR>")
