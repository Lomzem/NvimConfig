return {
	clang_format = {
		prepend_args = {
			"-style={IndentWidth: 4, AllowShortFunctionsOnASingleLine: None, PointerAlignment: Left, ReferenceAlignment: Right, BreakConstructorInitializers: AfterColon, PackConstructorInitializers: Never}",
		},
	},
}
