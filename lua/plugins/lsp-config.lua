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
          				"--pch-storage=memory",
          				"--all-scopes-completion",
          				"--pretty",
          				"--header-insertion=never",
          				"-j=4",
          				"--inlay-hints",
          				"--header-insertion-decorators",
          				"--function-arg-placeholders",
          				"--completion-style=detailed",
				},
			})
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pylsp")
		end
	}
}


