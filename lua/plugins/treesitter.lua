-- TREESITTER INIT
return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()		
-- TREESITTER CONFIGS
		local configs = require("nvim-treesitter.configs")
		configs.setup({
		ensure_installed = { "c", "python" },
		highlight = { enable = true },
		indent = { enable = true },
	})
	end
}



