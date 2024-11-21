return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap = require("dap")
		local ui = require("dapui")
		require("nvim-dap-virtual-text").setup()

		dap.adapters.cppdbg = {
			id = "cppdbg",
			type = "executable",
			command = "/home/lomzem/.local/share/nvim/mason/bin/OpenDebugAD7",
		}
		dap.configurations.c = {
			{
				name = "Launch file",
				type = "cppdbg",
				request = "launch",
				program = function()
					-- Find the first executable in current directory
					local cwd = vim.fn.getcwd()
					local executables = vim.fn.glob(cwd .. "/*", 1, 1) -- 1 for files only
					for _, file in ipairs(executables) do
						if vim.fn.executable(file) == 1 then
							return file
						else
							return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
						end
					end
				end,
				cwd = "${workspaceFolder}",
				stopAtEntry = true,
			},
		}
		dap.configurations.cpp = dap.configurations.c
		dap.configurations.rust = dap.configurations.c

		ui.setup({
			layouts = {
				{
					elements = {
						{
							id = "scopes",
							size = 0.25,
						},
						{
							id = "breakpoints",
							size = 0.25,
						},
						{
							id = "stacks",
							size = 0.25,
						},
						{
							id = "watches",
							size = 0.25,
						},
					},
					position = "left",
					size = 40,
				},
				{
					elements = {
						{
							id = "repl",
							size = 0.5,
						},
						{
							id = "console",
							size = 1,
						},
					},
					position = "bottom",
					size = 15,
				},
			},
		})

		vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
		vim.keymap.set("n", "<F1>", dap.continue)
		vim.keymap.set("n", "<F2>", dap.step_into)
		vim.keymap.set("n", "<F3>", dap.step_over)
		vim.keymap.set("n", "<F4>", dap.step_out)
		vim.keymap.set("n", "<F9>", dap.restart)

		vim.keymap.set("n", "<leader>?", function()
			ui.eval(nil, { enter = true })
		end)

		dap.listeners.before.attach.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			ui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			ui.close()
		end
	end,
}
