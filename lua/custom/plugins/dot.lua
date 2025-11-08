-- Browse Shortcut stories
return {
  dir = '~/Documents/dot.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>.', group = 'Shortcut' },
    { '<leader>.s', '<cmd>Telescope dot stories<cr>', desc = 'Browse [S]tories' },
  },
  config = function()
    pcall(require('telescope').load_extension, 'dot')
  end,
}
