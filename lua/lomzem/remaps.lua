vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", ":w<CR>")

vim.keymap.set("n", "<leader>o", "O<Esc>O")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "Y", "yy")

vim.keymap.set("n", "D", "dd")
vim.keymap.set("n", "C", "cc")

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<A-q>", ":q<CR>")

vim.keymap.set("n", "{", "<<")
vim.keymap.set("n", "}", ">>")

vim.keymap.set("v", "J", "j")
vim.keymap.set("v", "K", "k")

vim.keymap.set("n", "<leader>;", "A;<Esc>")
vim.keymap.set("n", "<leader>,", "A,<Esc>")

vim.keymap.set("n", "<C-a>", "ggVG")
