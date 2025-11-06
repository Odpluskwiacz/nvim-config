require("options")
require("keymaps")

-- Auto start LSP jeśli jest zainstalowany w systemie
local servers = {
--  lua = { "lua-language-server" },
  python = { "pyright-langserver", "--stdio" },
  bash = { "bash-language-server", "start" },
  c = { "clangd" },
  cpp = { "clangd" },
}

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    local ft = vim.bo.filetype
    local cmd = servers[ft]
    if cmd then
      vim.lsp.start({
        name = ft .. "-ls",
        cmd = cmd,
        root_dir = vim.fn.getcwd(),
      })
    end
  end,
})
