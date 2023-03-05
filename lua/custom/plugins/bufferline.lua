return {
	'akinsho/bufferline.nvim',
	version = '*',
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},
	config = function()
		vim.opt.termguicolors = true
		require('bufferline').setup({
			options = {
				diagnostics = 'nvim_lsp',
				offsets = {
					{
						filetype = 'neo-tree',
						text = 'File Explorer',
						highlight = 'directory',
						text_align = 'left',
						separator = true,
					}
				}
			}
		})

		vim.api.nvim_set_keymap('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
		vim.api.nvim_set_keymap('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
	end
}
