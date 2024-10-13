local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node

local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("c", {
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
