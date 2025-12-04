# Moje NVIM Config
zależy mi na jak najmniejszej liczbie pobieranych pluginów itp.
aktualnie walcze z LSP żeby działało tak jak mi się podoba

## Nowe Key bindy do LSP
LSP keybinds
map("n", "gd", vim.lsp.buf.definition)
map("n", "K", vim.lsp.buf.hover)
map("n", "<leader>rn", vim.lsp.buf.rename)
map("n", "<leader>ca", vim.lsp.buf.code_action)
map("n", "gr", vim.lsp.buf.references)
map("n", "<leader>f", function()


Ctrl - C (copy works)

## Architektura

* init.lua
|
|-lua
    |
    options.lua # bezpluginowa configuracja
    keymaps.lua # Własne skróty klawiszowe
