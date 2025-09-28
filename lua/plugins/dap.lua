---@type LazyPluginSpec
return {
	"mfussenegger/nvim-dap",
	lazy = false,
	dependencies = {
		{
			"igorlfs/nvim-dap-view",
			---@module "dap-view"
			---@type dapview.Config
			opts = {
				auto_toggle = true,
				winbar = {
					sections = { "console", "repl", "threads", "scopes", "watches" },
					default_section = "repl",
				},
				windows = {
					terminal = {
						start_hidden = false,
					},
				},
			},
		},
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
		{
			"theHamsta/nvim-dap-virtual-text",
			---@module "nvim-dap-virtual-text"
			---@type nvim_dap_virtual_text_options
			opts = {
				-- all_references = true,
				highlight_new_as_changed = true,
			},
		},
	},
	keys = {
		{
			"<leader>b",
			function()
				require("dap").toggle_breakpoint()
			end,
		},
		{
			"<leader>db",
			function()
				require("dap").clear_breakpoints()
			end,
		},
		{
			"<leader>dq",
			function()
				require("dap").close()
				require("dap-view").close()
				require("nvim-dap-virtual-text").refresh()
			end,
		},
		{
			"<leader>dc",
			function()
				require("dap").continue()
			end,
		},
		{
			"<leader>dn",
			function()
				require("dap").step_over()
			end,
		},
		{
			"<leader>dr",
			function()
				require("dap").restart()
			end,
		},
		{
			"<leader>?",
			function()
				local dapui = require("dapui")
				dapui.setup()
				dapui.eval(nil, { enter = true })
			end,
		},
	},
	config = function()
		local dap = require("dap")

		dap.adapters.cppdbg = {
			id = "cppdbg",
			type = "executable",
			command = "/home/lomzem/.vscode/extensions/ms-vscode.cpptools-1.27.7-linux-x64/debugAdapters/bin/OpenDebugAD7",
		}

		dap.configurations.c = {
			{
				name = "Launch",
				type = "cppdbg",
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
