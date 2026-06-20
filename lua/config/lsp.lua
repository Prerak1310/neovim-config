-- configure first
vim.lsp.config("ts_ls", {
	filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
})
vim.lsp.config("jdtls", {
	filetypes = { "java" },
	init_options = { bundles = require("spring_boot").java_extensions() },
})

-- Enable servers
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("omnisharp")
vim.lsp.enable("eslint")
vim.lsp.enable("prisma-language-server")
vim.lsp.enable("jdtls")

-- Clean diagnostics
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
})
