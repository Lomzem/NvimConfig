local ls = require("luasnip")
local s = ls.snippet
local node = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt

local date = function()
	return { os.date("%Y-%m-%d") }
end

local csci_21_filename = function()
	local fn = vim.api.nvim_buf_get_name(0)
	local dirname = string.match(fn, "/([a-zA-Z0-9_-]+)/[a-zA-Z0-9_-]+.cpp")
	dirname = string.gsub(dirname, "-", " ")
	dirname = string.gsub(dirname, "_", " ")
	return string.gsub(" " .. dirname, "%W%l", string.upper):sub(2)
end

ls.add_snippets("cpp", {
	s({ trig = "csci", snippetType = "autosnippet", name = "CSCI-21 Template", dscr = "Template for CSCI-21" }, {
		t({ "/***************************************", "" }),
		f(csci_21_filename),
		-- insert(1, f(csci_21_filename)),
		t({ "", "Author: Lawjay Lee" }),
		t({ "", "Date Completed: " }),
		f(date, nil),
		t({ "", "Description: " }),
		i(1, "TODO!"),
		t({ "", "***************************************/" }),
		t({ "", "" }),
		t({ "", "#include <iostream>" }),
		t({ "", "using namespace std;" }),
		t({ "", "" }),
		t({ "", "int main() {", "\t" }),
		i(0),
		t({ "", "\treturn 0;" }),
		t({ "", "}" }),
	}),

	s({
		trig = "npt",
		snippetType = "autosnippet",
		name = "nullptr",
		dscr = "nullptr",
	}, {
		t("nullptr"),
	}),

	s({
		trig = "unstd",
		snippetType = "autosnippet",
		name = "using namespace std",
		dscr = "using namespace std",
	}, {
		t("using namespace std;"),
	}),

	s({
		trig = "tfor",
		snippetType = "autosnippet",
		name = "Traditional For Loop",
		dscr = "for (int i(0); i < $1; i++) {}",
	}, {
		t("for (size_t i(0); i < "),
		i(1),
		t({ "; i++) {", "\t" }),
		i(2),
		t({ "", "}" }),
	}),
})
