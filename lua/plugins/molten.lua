---@type LazySpec
return {
	"benlubas/molten-nvim",
	dependencies = { "3rd/image.nvim" },
	lazy = false,
	version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
	build = ":UpdateRemotePlugins",
	init = function()
		vim.g.molten_image_provider = "image.nvim"
		vim.g.python3_host_prog = vim.fn.expand("~/.local/share/venv/neovim/bin/python3")
	end,
	keys = {
		{
			"<localleader>ip",
			desc = "Initialize Molten for python3",
			function()
				local venv = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX")
				if venv ~= nil then
					-- in the form of /home/benlubas/.virtualenvs/VENV_NAME
					venv = string.match(venv, "/.+/(.+)")
					vim.cmd(("MoltenInit %s"):format(venv))
				else
					vim.cmd("MoltenInit python3")
				end
			end,
		},
	},
}
