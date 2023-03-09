return {
	'MunifTanjim/eslint.nvim',
	version = '*',
	dependencies = {
		'neovim/nvim-lspconfig',
		'jose-elias-alvarez/null-ls.nvim',
	},
	config = function()
		local eslint = require('eslint')
		eslint.setup({
			bin = 'eslint_d',
		})
	end
}
