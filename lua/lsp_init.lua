local installed_lsp = {
    "html",
    "lua-language-server",
}

for _, lsp in ipairs(installed_lsp) do
    vim.lsp.enable(lsp)
end
