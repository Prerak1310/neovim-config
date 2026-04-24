-- configure first
vim.lsp.config("ts_ls", {
	filetypes = { "typescript", "typescriptreact" },
})
-- Enable servers
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("omnisharp")
vim.lsp.enable("eslint")

-- Clean diagnostics
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
})
