vim.keymap.set("n", "<leader>b", "<cmd>FzfLua buffers<cr>")
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>")
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua lsp_references<cr>")
vim.keymap.set("n", "<leader>fd", "<cmd>FzfLua lsp_definitions<cr>")
vim.keymap.set("n", "<leader>g", "<cmd>FzfLua grep<cr>")
vim.keymap.set("n", "<leader>cg", "<cmd>FzfLua git_commits<cr>")

vim.keymap.set("n", "e", "<cmd>Ex<cr>")
