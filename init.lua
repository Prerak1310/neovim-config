require("config.lazy")
require("config.nvim-treesitter")
require("plugins.telescope")
require("plugins.nvim-treesitter")
require("plugins.kanagawa-theme")
require("plugins.fzf-lua")
local builtin = require("telescope.builtin")
vim.cmd([[
set nu
set rnu
set clipboard=unnamedplus
]])
vim.keymap.set("n", "<leader>b", "<cmd>FzfLua buffers<cr>", { desc = "List Buffers" })
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "List Buffers" })
vim.keymap.set("n", "<leader>g", "<cmd>FzfLua grep<cr>", { desc = "List Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.cmd.colorscheme("catppuccin")

vim.lsp.config["luals"] = {
	-- Command and arguments to start the server.
	cmd = { "lua-language-server" },
	-- Filetypes to automatically attach to.
	filetypes = { "lua" },
	-- Sets the "root directory" to the parent directory of the file in the
	-- current buffer that contains either a ".luarc.json" or a
	-- ".luarc.jsonc" file. Files that share a root directory will reuse
	-- the connection to the same LSP server.
	-- Nested lists indicate equal priority, see |vim.lsp.Config|.
	root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
	-- Specific settings to send to the server. The schema for this is
	-- defined by the server. For example the schema for lua-language-server
	-- can be found here https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
		},
	},
}

vim.lsp.enable("luals")
