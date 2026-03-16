local installed_lsp = {
    "html",
    "lua_ls",
}

for _, lsp in ipairs(installed_lsp) do
    vim.lsp.enable(lsp)
end
