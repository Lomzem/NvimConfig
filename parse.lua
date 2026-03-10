local files = vim.fs.find(function(name, path)
	return name:match("%.lua$")
end, { path = "/home/lomzem/.config/nvim", type = "file", limit = math.huge })

vim.notify(vim.inspect(files))
