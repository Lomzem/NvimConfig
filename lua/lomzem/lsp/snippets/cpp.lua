local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node

local extras = require("luasnip.extras")
local rep = extras.rep

vim.keymap.set("i", "<c-p>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)

ls.add_snippets("cpp", {
	s({
		trig = "npt",
		snippetType = "autosnippet",
		name = "nullptr",
		dscr = "nullptr",
	}, {
		t("nullptr"),
	}),

	s("r", { t("return ") }),

	s({
		trig = "u",
		name = "using namespace std",
		dscr = "using namespace std",
	}, {
		t("using namespace std;"),
	}),

	s({
		trig = "tf",
		name = "Traditional For Loop",
		dscr = "for (int i(0); i < $1; i++) {}",
	}, {
		t("for (int i(0); i < "),
		i(1),
		t({ "; i++) {", "\t" }),
		i(2),
		t({ "", "}" }),
	}),

	s({
		trig = "m",
		name = "main",
		dscr = "main",
	}, {
		t({ "using namespace std;", "", "int main() {", "\t" }),
		i(0),
		t({ "", "\treturn 0;", "}" }),
	}),
	s({
		trig = "it",
		name = "Iterator For Loop",
		dscr = "Iterator For Loop",
	}, {
		t("for (auto i = "),
		i(1),
		t(".begin(); i != "),
		rep(1),
		t({ ".end(); i++) {", "\t" }),
		i(2),
		t({ "", "}" }),
	}),

	s("co", {
		t("cout << "),
		i(1),
		c(1, {
			t(' << "\\n"'),
			t(""),
		}),
		t(";"),
	}),
})
