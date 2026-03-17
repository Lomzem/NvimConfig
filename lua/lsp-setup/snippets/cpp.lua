local ls = require("luasnip")

local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fn = ls.function_node
local i = ls.insert_node
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node

---@param name string
local function autosnip(name, nodes)
	return s({
		trig = name,
		snippetType = "autosnippet",
		name = name,
		dscr = name,
	}, nodes)
end

---comment
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

	autosnip("cout ", { t(prefix_std("cout << ")) }),
	autosnip("cin ", { t(prefix_std("cin >> ")) }),

	autosnip("vec<", {
		d(1, function(_)
			return sn(nil, {
				t(prefix_std("vector<")),
				i(1),
				t(">"),
			})
		end),
	}),

	autosnip("endl ", { t("<< '\\n';") }),

	autosnip("int main ", {
		t({ "int main() {", "\t" }),
		i(0),
		t({ "", "\treturn 0;", "}" }),
	}),

	s({
		trig = "u",
		name = "using namespace std",
		dscr = "using namespace std",
	}, {
		t("using namespace std;"),
	}),

	s("i", fmt([[#include <{}>{}]], { i(1), i(0) })),
})
