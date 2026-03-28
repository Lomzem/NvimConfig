vim.api.nvim_create_autocmd("CmdlineEnter", {
	pattern = ":",
	callback = function()
		vim.schedule(function()
			if vim.fn.getcmdtype() == ":" and vim.fn.getcmdline() == "" then
				require("blink.cmp").show({ providers = { "cmdline" } })
			end
		end)
	end,
})

---@type LazySpec
return {
	"saghen/blink.cmp",
	version = "1.*",
	event = "VeryLazy",
	dependencies = {
		"saghen/blink.compat",
	},
	---@module "blink.cmp"
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "none",
			["<m-k>"] = { "select_prev", "fallback" },
			["<m-j>"] = { "select_next", "fallback" },
			["<m-l>"] = { "select_and_accept", "fallback" },

			["<c-k>"] = { "select_prev", "fallback" },
			["<c-j>"] = { "select_next", "fallback" },
			["<c-l>"] = { "select_and_accept", "fallback" },

			["<m-e>"] = { "hide", "fallback" },
			["<m-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<c-space>"] = { "show", "show_documentation", "hide_documentation" },

			["<m-1>"] = {
				function(cmp)
					cmp.accept({ index = 1 })
				end,
			},
			["<m-2>"] = {
				function(cmp)
					cmp.accept({ index = 2 })
				end,
			},
			["<m-3>"] = {
				function(cmp)
					cmp.accept({ index = 3 })
				end,
			},
			["<m-4>"] = {
				function(cmp)
					cmp.accept({ index = 4 })
				end,
			},
			["<m-5>"] = {
				function(cmp)
					cmp.accept({ index = 5 })
				end,
			},
		},
		cmdline = {
			keymap = {
				preset = "inherit",
			},
			completion = {
				menu = { auto_show = true },
			},
		},
	},
}
