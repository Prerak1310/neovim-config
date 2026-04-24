return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = {
		terminal_colors = true,
		undercurl = true,
		underline = true,
		bold = true,
		italic = {
			strings = false,
			emphasis = true,
			comments = true,
			operators = false,
			folds = true,
		},
		strikethrough = true,

		contrast = "soft", -- "hard", "soft", or ""

		palette_overrides = {},
		overrides = {},

		dim_inactive = false,
		transparent_mode = false,
	},
	config = function(_, opts)
		require("gruvbox").setup(opts)
		vim.cmd("colorscheme gruvbox")
		vim.cmd([[
highlight link RainbowDelimiterRed GruvboxRed
highlight link RainbowDelimiterYellow GruvboxYellow
highlight link RainbowDelimiterBlue GruvboxBlue
highlight link RainbowDelimiterOrange GruvboxOrange
highlight link RainbowDelimiterGreen GruvboxGreen
highlight link RainbowDelimiterViolet GruvboxPurple
highlight link RainbowDelimiterCyan GruvboxAqua
]])
	end,
}
