vim.keymap.set("n", "<leader>ru", ":w<CR>:term nasm -f elf %; ld -m elf_i386 *.o; ./a.out<CR>")
require("lomzem/lsp/snippets/asm")
-- vim.api.nvim_create_autocmd("BufWritePost", {
--     pattern = "*.asm",
--     callback = function()
--         vim.cmd("silent exec '!pdflatex %; latexmk -c'")
--     end,
-- })
