return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		local api = require("nvim-tree.api")

		local function edit_or_open()
			local node = api.tree.get_node_under_cursor()

			if node.nodes ~= nil then
				-- expand or collapse folder
				api.node.open.edit()
			else
				-- open file
				api.node.open.edit()
				-- Close the tree if file was opened
				api.tree.close()
			end
		end

		local function vsplit_preview()
			local node = api.tree.get_node_under_cursor()

			if node.nodes ~= nil then
				-- expand or collapse folder
				api.node.open.edit()
			else
				-- open file as vsplit
				api.node.open.vertical()
			end

			-- Finally refocus on tree if it was lost
			api.tree.focus()
		end

		require("nvim-tree").setup({
			on_attach = function(bufnr)
				vim.keymap.set("n", "l", edit_or_open)
				vim.keymap.set("n", "<cr>", edit_or_open)
				vim.keymap.set("n", "L", vsplit_preview)
				vim.keymap.set("n", "h", api.tree.close)
				vim.keymap.set("n", "q", api.tree.close)
				vim.keymap.set("n", "H", api.tree.collapse_all)

				vim.keymap.set("n", "/", function()
					local fzf = require("fzf-lua")
					fzf.fzf_exec("fd -H -t f -E '.git/'", {
						prompt = ":",
						actions = {
							["default"] = {
								fn = function(selected)
									api.tree.find_file(selected[1])
								end,
								desc = "fuzzy find in tree",
							},
						},
					})
				end)
			end,
		})
	end,
	keys = {
		{ "<c-h>", "<cmd>NvimTreeToggle<cr>" },
	},
}
