return {
	"glacambre/firenvim",
    enabled = false,
	build = ":call firenvim#install(0)",
	config = function()
		vim.g.firenvim_config = {
			localSettings = {
				[".*"] = {
					takeover = "never",
				},
			},
		}
		if vim.g.started_by_firenvim == true then
			vim.cmd("startinsert")
		end
		vim.api.nvim_create_autocmd({ "BufEnter" }, {
			pattern = {
				"chat.deepseek.com_*.txt",
				"chatgpt.com_*.txt",
				"gemini.google.com_*.txt",
				"github.com_*.txt",
			},
			command = "set filetype=markdown",
		})
	end,
}
