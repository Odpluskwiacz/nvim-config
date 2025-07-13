return{
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
    	{
        	"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
			ensure_installed = {
					"clangd",
					"pylsp",
					"lua_ls",
				},
			})
		end
     	},
	{

		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("clangd")
			vim.lsp.config("clangd", {
				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
					"--clang-tidy-checks=readability-*,modernize-*,-modernize-use-trailing-return-type",
					"--fallback-style=file",
					"--header-insertion=never",
					"--compile-commands-dir=.",
					"--query-driver=**",
				},
			})
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pylsp")
		end
	}
}


