return {
	"MunifTanjim/prettier.nvim",
	version = "*",
	dependencies = {
		"neovim/nvim-lspconfig",
		"jose-elias-alvarez/null-ls.nvim",
	},
	config = function()
		require("prettier").setup({
			bin = 'prettier',
			filetypes = {
				'css',
				'graphql',
				'html',
				'javascript',
				'javascriptreact',
				'json',
				'less',
				'markdown',
				'scss',
				'typescript',
				'typescriptreact',
			}
		})
	end
}
