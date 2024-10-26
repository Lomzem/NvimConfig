local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("python", {
	s("fi", {
		t("from "),
		i(1),
		t(" import "),
		i(0),
	}),

	s("d", {
		t("def "),
		i(1),
		t("("),
		i(2),
		t({ "):", "\t" }),
		i(0),
	}),
})
