local map = vim.keymap.set

map("n", "gd", vim.lsp.buf.definition)
map("n", "K", vim.lsp.buf.hover)
map("n", "<leader>rn", vim.lsp.buf.rename)
map("n", "<leader>ca", vim.lsp.buf.code_action)
map("n", "gr", vim.lsp.buf.references)
map("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end)

-- Kopiowanie do [Ctrl-C]
vim.keymap.set('v', '<C-c>', '"+y', { noremap = true, silent = true })
