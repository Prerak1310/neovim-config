require("config.lazy")
require("config.nvim-treesitter")
vim.lsp.config["luals"] = require("config.luals")
vim.lsp.config["pyright"] = require("config.pyright")
-- vim.lsp.config["eslint"] = require("config.eslint")
require("plugins.telescope")
require("plugins.nvim-treesitter")
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

-- color themes
-- vim.cmd.colorscheme("catppuccin")
vim.cmd([[colorscheme moonfly]])
-- require("plugins.tokyodark-theme")

vim.lsp.enable("luals")
vim.lsp.enable("pyright")
vim.lsp.enable("eslint")
vim.lsp.enable("clangd")

local base_on_attach = vim.lsp.config.eslint.on_attach
vim.lsp.config("eslint", {
	on_attach = function(client, bufnr)
		if not base_on_attach then
			return
		end

		base_on_attach(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "LspEslintFixAll",
		})
	end,
})
