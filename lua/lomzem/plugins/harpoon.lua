return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup({
			settings = {
                save_on_toggle = true,
				sync_on_ui_close = true,
			},
		})

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)

		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<A-1>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<A-2>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<A-3>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<A-4>", function()
			harpoon:list():select(4)
		end)

		-- workaround to save cursor position
		vim.api.nvim_create_autocmd({ "BufLeave", "ExitPre" }, {
			pattern = "*",
			callback = function()
				local filename = vim.fn.expand("%:p:.")
				local harpoon_marks = harpoon:list().items
				for _, mark in ipairs(harpoon_marks) do
					if mark.value == filename then
						mark.context.row = vim.fn.line(".")
						mark.context.col = vim.fn.col(".")
						return
					end
				end
			end,
		})
	end,
}
