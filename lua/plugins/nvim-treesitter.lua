-- return {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	branch = "master",
-- 	build = ":TSUpdate",
-- 	lazy = false,
--
-- 	config = function()
-- 		require("nvim-treesitter.configs").setup({
-- 			ensure_installed = {
-- 				"c",
-- 				"lua",
-- 				"vim",
-- 				"vimdoc",
-- 				"query",
-- 				"markdown",
-- 				"markdown_inline",
-- 				"javascript",
-- 				"typescript",
-- 				"tsx",
-- 				"python",
-- 				"lua",
-- 				"vim",
-- 			},
--
-- 			sync_install = false,
-- 			auto_install = true,
-- 			ignore_install = { "javascript" },
--
-- 			highlight = {
-- 				enable = true,
-- 				disable = { "c", "rust" },
-- 				additional_vim_regex_highlighting = false,
-- 			},
-- 		})
-- 	end,
-- }

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	commit = "7caec274fd19c12b55902a5b795100d21531391f",
}
