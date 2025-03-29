local formatters_tbl = {}

for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/formatters/config/*.lua", true)) do
	formatters_tbl = vim.tbl_deep_extend("force", formatters_tbl, loadfile(ft_path)())
end

return formatters_tbl
