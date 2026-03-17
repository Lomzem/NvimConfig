---@type LazySpec
return {
	"b0o/incline.nvim",
	event = "VeryLazy",
	config = function()
		require("incline").setup({
			window = {
				padding = 0,
				margin = { horizontal = 0, vertical = 0 },
			},
			render = function(props)
				local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
				if filename == "" then
					filename = "[No Name]"
				end

				local function get_diagnostic_label()
					local icons = { error = "󰅐 ", warn = "󰀦 ", info = "󰋽 ", hint = "󰌶 " }
					local label = {}

					for severity, icon in pairs(icons) do
						local n = #vim.diagnostic.get(props.buf, {
							severity = vim.diagnostic.severity[string.upper(severity)],
						})
						if n > 0 then
							table.insert(label, { icon .. n .. " ", group = "DiagnosticSign" .. severity })
						end
					end
					if #label > 0 then
						table.insert(label, { " │ " })
					end
					return label
				end

				return {
					{ get_diagnostic_label() },
					filename,
					vim.bo[props.buf].modified and " *" or "",
					" ",
				}
			end,
		})
	end,
}
