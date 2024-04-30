local ls = require("luasnip")
local s = ls.snippet
-- local node = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
-- local choice = ls.choice_node
-- local dynamicn = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt

local get_project_name = function()
	local fn = vim.api.nvim_buf_get_name(0)
	local pn = string.match(fn, "/project%-%d+%-([a-zA-Z0-9_-]+)/[a-zA-Z0-9_-]+.asm")
	pn = string.gsub(pn, "-", " ")
	pn = string.gsub(pn, "_", " ")
	return string.gsub(" " .. pn, "%W%l", string.upper):sub(2)
end

ls.add_snippets("asm", {
	s({ trig = "csci", snippetType = "autosnippet", name = "CSCI-10 Template", dscr = "Template for CSCI-10" }, {
		t({
			";*************************************************************************",
			"; Lawjay Lee",
			"; Project Due Date: 2024-",
		}),
		i(1),
		t({ "", "; Project Name: " }),
		f(get_project_name),
		t({
			"",
			"; CSCI-10: Computer Architecture and Organization",
			"; Spring 2024",
			"; Project Description: ",
		}),
		i(2),
		t({
			"",
			";*************************************************************************",
			"",
			"",
		}),
		i(0),
	}),
})
