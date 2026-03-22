local ls = require("luasnip")

-- local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local i = ls.insert_node
local s = ls.snippet
-- local sn = ls.snippet_node
local t = ls.text_node

local autosnip = require("lsp-setup.snippets.snip_utils").autosnip

---@return boolean found_namespace
local function find_namespace()
	local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
	local found_using_namespace_std = false
	for _, line in ipairs(lines) do
		if line:match("using namespace std;") then
			found_using_namespace_std = true
		end
	end
	return found_using_namespace_std
end

---@param expansion string
local function prefix_std(expansion)
	if find_namespace() then
		return expansion
	else
		return "std::" .. expansion
	end
end

ls.add_snippets("cpp", {
	autosnip("npt ", {
		t("nullptr "),
	}),

	s("cout", { t(prefix_std("cout << ")) }),
	s("cin", { t(prefix_std("cin >> ")) }),
	autosnip("string ", { t(prefix_std("string ")) }),

	s("vec", fmt([[{}<{}> {}]], { t(prefix_std("vector")), i(1), i(0) })),

	autosnip("endl ", { t("<< '\\n';") }),

	s("main", {
		t({ "int main() {", "\t" }),
		i(0),
		t({ "", "\treturn 0;", "}" }),
	}),

	s("u", t("using namespace std;")),

	s("i", fmt([[#include <{}>{}]], { i(1), i(0) })),

	s("pair", fmt([[{}<{}, {}> {}]], { prefix_std("pair"), i(1), i(2), i(0) })),

	s(
		"for",
		fmta(
			[[
for (<>; <>; <>) {
    <>
}
    ]],
			{ i(1), i(2), i(3), i(0) }
		)
	),
})
