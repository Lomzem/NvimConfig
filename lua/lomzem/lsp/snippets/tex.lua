local ls = require("luasnip")
local s = ls.snippet
local fmt = require("luasnip.extras.fmt").fmt

local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep

ls.add_snippets("tex", {
    -- Greek letters
    s({ trig = "-a", snippetType = "autosnippet", name = "Greek Alpha", dscr = "Greek Alpha" }, { t("\\alpha ") }),
    s({ trig = "-d", snippetType = "autosnippet", name = "Delta", dscr = "Uppercase Delta" }, { t("\\Delta ") }),
    s({ trig = "-t", snippetType = "autosnippet", name = "Theta", dscr = "Theta" }, { t("\\theta ") }),
    s({ trig = "-w", snippetType = "autosnippet", name = "Omega", dscr = "Omega" }, { t("\\omega ") }),

    s({
        trig = "-imp",
        snippetType = "autosnippet",
        name = "Basic Imports and Settings",
        dscr = "Basic Imports and Settings",
    }, {
        t({
            "\\documentclass[fleqn]{article}",
            "\\setlength{\\parskip}{\\baselineskip}%",
            "\\setlength{\\parindent}{0pt}%",
            "",
            "\\usepackage[table]{xcolor}",
            "\\usepackage{siunitx}",
            "\\usepackage{tabularx}",
            "\\usepackage{float}",
            "\\usepackage{caption}",
            "\\usepackage{graphicx}",
            "\\usepackage{amsmath}",
            "",
            "\\begin{document}",
            "\\setlength{\\mathindent}{0pt}",
            "",
        }),
        i(0),
        t({ "", "\\end{document}" }),
    }),
    s(
        { trig = "sect", name = "New Section", dscr = "New Section" },
        fmt(
            [[
	        \section*{{{}}}
	        ]],
            { i(1, "sectName") }
        )
    ),
    s(
        { trig = "-sect", snippetType = "autosnippet", name = "New Section", dscr = "New Section" },
        fmt(
            [[
	        \section*{{{}}}
	        ]],
            { i(1, "sectName") }
        )
    ),
    s(
        { trig = "bgn", snippetType = "autosnippet", name = "Begin", dscr = "Begin" },
        fmt(
            [[
	        \begin{{{}}}
	        {}
	        \end{{{}}}
	        ]],
            { i(1, "document"), i(0), rep(1) }
        )
    ),
    s({
        trig = "ttable",
        snippetType = "autosnippet",
        name = "Table Template",
        dscr = "Template for a table with formatting I like",
    }, { t("\\setlength{\\extrarowheight}{2pt}") }),

    s({
        trig = "img",
        name = "Insert Image",
        dscr = "Insert LaTeX Image",
    }, {
        t({ "\\begin{figure}[H]", "" }),
        t("\t\\caption*{"),
        i(0),
        t({ "}", "" }),
        t("\t\\includegraphics[width=\\textwidth]{"),
        i(1),
        t({ "}", "" }),
        t({ "\\end{figure}" }, ""),
    }),
    s({ trig = "tint", snippetType = "autosnippet", name = "Text", dscr = "text" }, {
        t("\\text{"),
        i(1),
        t("}"),
        i(0),
    }),
    s({ trig = "eqn", snippetType = "autosnippet", name = "Math Equation", dscr = "math equation" }, {
        t("\\[ "),
        i(1),
        t(" \\]"),
        i(0),
    }),
    s(
        { trig = "_", snippetType = "autosnippet", name = "Subscript", dscr = "Subscript" },
        fmt(
            [[
	    _{{{}}} {}
	    ]],
            { i(1, "A"), i(0) }
        )
    ),
    s({ trig = "lr[", snippetType = "autosnippet", name = "Left Right []", dscr = "Left Right []" }, {
        t("\\left[ "),
        i(1, "x"),
        t(" \\right"),
        i(0),
    }),
    s({ trig = "lr(", snippetType = "autosnippet", name = "Left Right ()", dscr = "Left Right ()" }, {
        t("\\left( "),
        i(1, "x"),
        t(" \\right"),
        i(0),
    }),
    s({ trig = "lr{", snippetType = "autosnippet", name = "Left Right {}", dscr = "Left Right {}" }, {
        t("\\left{ "),
        i(1, "x"),
        t(" \\right"),
        i(0),
    }),
    s({ trig = "vec", snippetType = "autosnippet", name = "Vector", dscr = "Vector" }, {
        t("\\vec{"),
        i(1),
        t("}"),
        i(0),
    }),
    s({ trig = "sqrt", snippetType = "autosnippet", name = "sqrt", dscr = "Square Root" }, {
        t("\\sqrt{"),
        i(1),
        t("}"),
        i(0),
    }),
    s({ trig = "llim", snippetType = "autosnippet", name = "Limit", dscr = "Limit" }, {
        t("\\lim_{ "),
        i(1, "n"),
        t(" \\to "),
        i(2, "\\infty"),
        t("} "),
        i(0, "f(x)"),
    }),
    s({ trig = "iint", snippetType = "autosnippet", name = "Indefinite Integral", dscr = "Indefinite Integral" }, {
        t("\\int{"),
        i(1, "f(x)"),
        t("}\\ "),
        i(2, "dx"),
        i(0),
    }),
    s({ trig = "dint", snippetType = "autosnippet", name = "Definite Integral", dscr = "Definite Integral" }, {
        t("\\int_{"),
        i(1, "lowerLimit"),
        t("}^{"),
        i(2, "upperLimit"),
        t("} "),
        i(3, "f(x)"),
        t("\\ "),
        i(4, "dx"),
        i(0),
    }),
    s({ trig = "frac", snippetType = "autosnippet", name = "Fraction", dscr = "fraction" }, {
        t("\\frac{"),
        i(1),
        t("}"),
        i(0),
    }),
})
