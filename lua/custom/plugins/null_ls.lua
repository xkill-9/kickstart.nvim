return {
	"jose-elias-alvarez/null-ls.nvim",
	version = "*",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({})
	end
}
