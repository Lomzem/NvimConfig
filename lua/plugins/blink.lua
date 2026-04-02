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
			["<c-p>"] = { "select_prev", "fallback" },
			["<c-n>"] = { "select_next", "fallback" },
			["<c-l>"] = { "select_and_accept", "fallback" },

			["<C-u>"] = { "scroll_documentation_up", "fallback" },
			["<C-d>"] = { "scroll_documentation_down", "fallback" },

			["<c-e>"] = { "hide", "fallback" },
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
		sources = {
			providers = {
				path = {
					opts = {
						get_cwd = function(context)
							local bufname = vim.api.nvim_buf_get_name(context.bufnr)

							-- zsh edit-command-line uses a temp file in /tmp, so use the
							-- original shell cwd for relative path completion in that buffer.
							if bufname:match("^/tmp/zsh") and vim.env.ZSH_EDIT_COMMAND_LINE_CWD then
								return vim.env.ZSH_EDIT_COMMAND_LINE_CWD
							end

							return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
						end,
					},
				},
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
