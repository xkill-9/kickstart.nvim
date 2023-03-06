return {
	'glepnir/lspsaga.nvim',
	event = 'BufRead',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
		'nvim-treesitter/nvim-treesitter',
	},
	config = function()
		require('lspsaga').setup({})
		local keymap = vim.keymap.set

		-- Find definition
		keymap('n', '<leader>fd', '<cmd>Lspsaga lsp_finder<CR>', { desc = '[F]ind [D]efinition' })

		-- Preview definition
		keymap('n', '<leader>pd', '<cmd>Lspsaga preview_definition<CR>', { desc = '[P]review [D]efinition' })

		-- Go to definition
		keymap('n', '<leader>gd', '<cmd>Lspsaga goto_definition<CR>', { desc = '[G]o to [D]efinition' })

		-- Go to type definition
		keymap('n', '<leader>gt', '<cmd>Lspsaga goto_type_definition<CR>', { desc = '[G]o to [T]ype Definition' })

		-- Rename all occurrences of the hovered word for the entire file
		keymap('n', '<leader>rn', '<cmd>Lspsaga rename<CR>', { desc = '[R]e[n]ame' })

		-- Hover doc
		keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
		keymap('n', '<C-k>', '<cmd>Lspsaga signature_help<CR>')

		-- Code action (Quick-tips in vs-code)
		keymap({ 'n', 'v' }, '<leader>ca', '<cmd>Lspsaga code_action<CR>', { desc = '[C]ode [A]ctions' })

		-- Diagnostics
		-- Show line diagnostics
		keymap('n', '<leader>sl', '<cmd>Lspsaga show_line_diagnostics<CR>', { desc = '[S]how [L]ine Diagnostics' })

		keymap('n', '<leader>ne', function()
			require('lspsaga.diagnostic'):goto_next({ severity = vim.diagnostic.severity.ERROR })
		end, { desc = '[N]ext [E]rror' })

		keymap('n', '<leader>pe', function()
			require('lspsaga.diagnostic'):goto_prev({ severity = vim.diagnostic.severity.ERROR })
		end, { desc = '[P]revious [E]rror' })
	end
}
