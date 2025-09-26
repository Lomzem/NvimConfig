---@type LazyPluginSpec
return {
	"rcarriga/nvim-dap-ui",
	lazy = true,
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
	},
	keys = {
		{
			"<leader>b",
			function()
				require("dap").toggle_breakpoint()
			end,
		},
		{
			"<leader>dq",
			function()
				require("dap").close()
				require("dapui").close()
			end,
		},
		{
			"<down>",
			function()
				require("dap").continue()
			end,
		},
		{
			"<up>",
			function()
				require("dap").step_over()
			end,
		},
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dapui.setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		dap.adapters.gdb = {
			type = "executable",
			command = "gdb",
			args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
		}

		dap.configurations.c = {
			{
				name = "Launch",
				type = "gdb",
				request = "launch",
				program = function()
					vim.system({ "make", "debug" }, {}, function() end):wait()
					return vim.fn.getcwd() .. "/debug"
				end,
				args = {}, -- provide arguments if needed
				cwd = "${workspaceFolder}",
				stopAtBeginningOfMainSubprogram = false,
			},
		}
		dap.configurations.cpp = dap.configurations.c
	end,
}
