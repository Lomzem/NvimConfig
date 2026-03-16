local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("sql", {
	s("m", {
		t({ "int main() {", "\t" }),
		i(1),
		t({ "", "\treturn 0;", "}" }),
	}),
	s("tf", {
		t("for (int i = 0; i < "),
		i(1),
		t({ "; i++) {", "\t" }),
		i(2),
		t({ "", "}" }),
	}),
})
