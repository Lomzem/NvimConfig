local ls = require("luasnip")
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt

local date = function()
	return { os.date("%Y-%m-%d") }
end

ls.add_snippets("go", {
	snip({ trig = "csci", snippetType = "autosnippet", name = "CSCI-20 Template", dscr = "Template for CSCI-20" }, {
		text({ "/***************************************", "" }),
		insert(1, "[PROGRAM NAME]"),
		text({ "", "Author: Lawjay Lee", "" }),
		text("Date Completed: "),
		func(date, nil),
		text({ "", "" }),
		text("Description: "),
		insert(2, "[PROGRAM DESCRIPTION]"),
		text({ "", "***************************************/", "", "" }),
	}),

	snip({ trig = "main", name = "Main", dscr = "package main and func main()" }, {
		text({ "package main", "", "" }),
		text({ "func main() {", "\t" }),
		insert(0, "// Your code here"),
		text({ "", "}" }),
	}),

	snip({ trig = "prl", snippetType = "autosnippet", name = "fmt.Println", dscr = "fmt.Println()" }, {
		text("fmt.Println("),
		insert(1),
		text(")"),
	}),

	-- snip({ trig = "func", snippetType = "autosnippet", name = "Function", dscr = "New function" }, {
	snip({ trig = "-func", snippetType = "autosnippet", name = "Function", dscr = "New function" }, {
		text("func "),
		insert(1),
		text("("),
		insert(2),
		text(") "),
		insert(3),
		text({ "{", "\t" }),
		insert(0),
		text({ "", "}" }),
	}),

	snip({ trig = "mfunc", snippetType = "autosnippet", name = "Member Function", dscr = "New member function" }, {
		text("func ("),
		insert(1),
		text(") "),
		insert(2),
		text("("),
		insert(3),
		text(") "),
		insert(4),
		text({ "{", "\t" }),
		insert(0),
		text({ "", "}" }),
	}),

	snip({ trig = "scln", snippetType = "autosnippet", name = "fmt.Scanln", dscr = "fmt.Scanln())" }, {
		text("fmt.Scanln(&"),
		insert(0),
		text(")"),
	}),

	snip({ trig = "-str", snippetType = "autosnippet", name = "New Struct", dscr = "Makes a new type struct" }, {
		text("type "),
		insert(1, "structName"),
		text({ " struct {", "\t" }),
		insert(0),
		text({ "", "}" }),
	}),

	snip({ trig = ">L", snippetType = "autosnippet", name = ":=", dscr = ":=" }, {
		text(":= "),
		insert(1),
	}),

	snip({ trig = ">l", snippetType = "autosnippet", name = ":=", dscr = ":=" }, {
		text(":= "),
		insert(1),
	}),
})
