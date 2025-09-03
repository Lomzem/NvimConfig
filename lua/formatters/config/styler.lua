return {
	styler = {
		-- hijacking "https://github.com/devOpifex/r.nvim",
		args = { "-s", "-e", "styler::style_file(commandArgs(TRUE))", "--args", "$FILENAME" },
		stdin = false,
	},
}
