return {
  'ghassan0/telescope-glyph.nvim',
  keys = {
    { '<leader>b', group = '[B]rowse' },
    { '<leader>bg', '<cmd>Telescope glyph<cr>', desc = '[B]rowse [G]lyphs' },
  },
  config = function()
    pcall(require('telescope').load_extension, 'glyph')
  end,
}
