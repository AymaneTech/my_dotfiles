return {
	{
		-- Use clang-format as the base formatter
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				c = { "clang_format" },
			},
			formatters = {
				clang_format = {
					prepend_args = {
						"--style={BasedOnStyle: LLVM, IndentWidth: 8, UseTab: Always, BreakBeforeBraces: Linux, AllowShortIfStatementsOnASingleLine: false, IndentCaseLabels: false, ColumnLimit: 80, AlignTrailingComments: true, SpaceBeforeParens: Always, AllowShortFunctionsOnASingleLine: false, SortIncludes: false}",
					},
				},
			},
		},
	},
}
