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
---@param lib string
---@return boolean found_lib
---@return boolean found_using_namespace_std
local function findlib(lib)
	local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
	local found_lib = false
	local found_using_namespace_std = false
	for _, line in ipairs(lines) do
		if line:match("#include <" .. lib .. ">") then
			found_lib = true
		elseif line:match("using namespace std;") then
			found_using_namespace_std = true
		end
	end
	if not found_lib then
		if vim.api.nvim_buf_get_lines(0, 0, 1, false)[1]:match("int main") then
			vim.api.nvim_buf_set_lines(0, 0, 0, false, { "#include <" .. lib .. ">", "" })
		else
			vim.api.nvim_buf_set_lines(0, 0, 0, false, { "#include <" .. lib .. ">" })
		end
	end
	return found_lib, found_using_namespace_std
end

local function autoimport(trigger, expansion, library)
	return autosnip(trigger, {
		fn(function()
			local _, found_using_namespace_std = findlib(library)
			if found_using_namespace_std then
				return expansion
			else
				return "std::" .. expansion
			end
		end),
	})
end

ls.add_snippets("cpp", {
	autosnip("npt ", {
		t("nullptr "),
	}),

	autoimport("cout ", "cout << ", "iostream"),
	autoimport("cin ", "cin >> ", "iostream"),
	autoimport("string ", "string ", "string"),

	autosnip("vec<", {
		d(1, function(_)
			local _, found_using = findlib("vector")
			local expansion = found_using and "vector<" or "std::vector<"
			return sn(nil, {
				t(expansion),
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
