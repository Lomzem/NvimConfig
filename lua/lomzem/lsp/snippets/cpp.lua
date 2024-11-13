local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local f = ls.function_node

local extras = require("luasnip.extras")
local rep = extras.rep

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

	s("w", {
		t("while ("),
		i(1),
		t({ ") {", "\t" }),
		i(2),
		t({ "", "}" }),
		i(0),
	}),

	s({
		trig = "tf",
		name = "Traditional For Loop",
		dscr = "for (int i(0); i < $1; i++) {}",
	}, {
		t("for (int i = 0; i < "),
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
		f(function()
			local lines = vim.api.nvim_buf_get_lines(0, 0, vim.api.nvim_buf_line_count(0), false)
			for _, line in ipairs(lines) do
				if line:match("using namespace std;") then
					return "cout << "
				end
			end
			return "std::cout << "
		end),
        i(1),
        t(' << "\\n";'),
	}),
})
