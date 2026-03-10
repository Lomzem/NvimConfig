local function extract_plugin_urls()
	local plugins_dir = vim.fn.stdpath("config") .. "/lua/plugins"

	local urls = {}

		local function scan_dir(dir)
		local handle = vim.loop.fs_scandir(dir)
		if not handle then return end

		while true do
			local name, dtype = vim.loop.fs_scandir_next(handle)
			if not name then break end

			local path = dir .. "/" .. name
			if dtype == "file" and name:match("%.lua$") then
				local chunk = loadfile(path)
				if chunk then
					local ok, spec = pcall(chunk)
					if ok and type(spec) == "table" then
						if spec[1] and type(spec[1]) == "table" and spec[1][1] then
							local main_url = spec[1][1]
							if type(main_url) == "string" and main_url:match("^[%w%-]+/[%w%-_.]+$") then
								table.insert(urls, main_url)
							end
						elseif spec[1] and type(spec[1]) == "string" then
							local main_url = spec[1]
							if main_url:match("^[%w%-]+/[%w%-_.]+$") then
								table.insert(urls, main_url)
							end
						end

						if spec.dependencies and type(spec.dependencies) == "table" then
							for _, dep in ipairs(spec.dependencies) do
								local dep_url
								if type(dep) == "string" then
									dep_url = dep
								elseif type(dep) == "table" and dep[1] then
									dep_url = dep[1]
								end
								if dep_url and type(dep_url) == "string" and dep_url:match("^[%w%-]+/[%w%-_.]+$") then
									table.insert(urls, dep_url)
								end
							end
						end
					end
				end
			elseif type == "directory" and not name:match("^%.") then
				scan_dir(path)
			end
		end
	end

	scan_dir(plugins_dir)

	local unique = {}
	local seen = {}
	for _, url in ipairs(urls) do
		if not seen[url] then
			seen[url] = true
			table.insert(unique, url)
		end
	end

	table.sort(unique)
	vim.notify(vim.inspect(unique))
end

extract_plugin_urls()
