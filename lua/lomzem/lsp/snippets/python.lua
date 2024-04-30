local ls = require("luasnip")
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("python", {
	snip({ trig = "prl", snippetType = "autosnippet", name = "Print", dscr = "Print statement" }, {
		text("print("),
		insert(0),
		text(")"),
	}),
})
