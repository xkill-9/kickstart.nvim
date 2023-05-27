return {
	'ThePrimeagen/harpoon',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	config = function()
		local mark = require('harpoon.mark')
		local ui = require('harpoon.ui')

		vim.keymap.set('n', '<leader>h', mark.add_file, { desc = "Add to [H]arpoon" })
		vim.keymap.set('n', '<leader><space>', ui.toggle_quick_menu, { desc = "Open Harpoon" })

		vim.keymap.set('n', '<C-h>', function()
			ui.nav_next()
		end)
		vim.keymap.set('n', '<C-g>', function()
			ui.nav_prev()
		end)
	end
}
