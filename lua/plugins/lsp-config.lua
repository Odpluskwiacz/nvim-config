return{
	{
		"mason-org/mason.nvim",
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
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.lua_ls.setup({})
		end
	}
}


