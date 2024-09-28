return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	main = "nvim-silicon",
	opts = {
		theme = "/home/lomzem/dotfiles/.config/bat/themes/rose-pine-moon.tmTheme",
		-- disable_defaults = true,
		output = function()
			return "./" .. os.date("!%Y-%m-%dT%H-%M-%SZ") .. "_code.png"
		end,
	},
}
