return {
  'ghassan0/telescope-glyph.nvim',
  config = function()
    local wk = require 'which-key'

    -- Load extension
    pcall(require('telescope').load_extension, 'glyph')

    -- Register mappings
    wk.register({
      b = {
        name = '[B]rowse',
        g = { '<cmd>Telescope glyph<cr>', '[B]rowse [G]lyphs' },
      },
    }, {
      prefix = '<leader>',
    })
  end,
}
