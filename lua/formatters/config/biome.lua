return {
	biome = {
		command = "biome",
		args = {
			"check",
			"--write",
			"--stdin-file-path",
			"$FILENAME",
			"--config-path=" .. vim.fn.expand("~/.config/nvim/lua/formatters/config/biome.json"),
		},
	},
}
