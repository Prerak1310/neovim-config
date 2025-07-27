require("config.lazy")
require("config.nvim-treesitter")
require("plugins.telescope")
require("plugins.nvim-treesitter")
require("plugins.fzf-lua")
require("plugins.roslyn")
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

vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")
vim.lsp.enable("clangd")

vim.lsp.config("luals", {
	on_init = function(client)
		if client.workspace_folders then
			local path = client.workspace_folders[1].name
			if
				path ~= vim.fn.stdpath("config")
				and (vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
			then
				return
			end
		end

		client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
			runtime = {
				-- Tell the language server which version of Lua you're using (most
				-- likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Tell the language server how to find Lua modules same way as Neovim
				-- (see `:h lua-module-load`)
				path = {
					"lua/?.lua",
					"lua/?/init.lua",
				},
			},
			-- Make the server aware of Neovim runtime files
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
					-- Depending on the usage, you might want to add additional paths
					-- here.
					-- '${3rd}/luv/library'
					-- '${3rd}/busted/library'
				},
				-- Or pull in all of 'runtimepath'.
				-- NOTE: this is a lot slower and will cause issues when working on
				-- your own configuration.
				-- See https://github.com/neovim/nvim-lspconfig/issues/3189
				-- library = {
				--   vim.api.nvim_get_runtime_file('', true),
				-- }
			},
		})
	end,
	settings = {
		Lua = {},
	},
})
