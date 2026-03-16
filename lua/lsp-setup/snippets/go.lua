local ls = require("luasnip")
local s = ls.snippet
-- local node = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
-- local func = ls.function_node
-- local choice = ls.choice_node
-- local dynamicn = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {
	s({ trig = "-pl", snippetType = "autosnippet" }, {
		t("fmt.Println("),
		i(1),
		t(")"),
		i(0),
	}),

	s({ trig = "-f", snippetType = "autosnippet" }, {
		t("func "),
		i(1),
		t("("),
		i(2),
		t(") "),
		i(3),
		t({ "{", "\t" }),
		i(0),
		t({ "", "}" }),
	}),
})
