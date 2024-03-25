-- Browse Shortcut stories
return {
  'xkill-9/dot.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    local wk = require 'which-key'

    -- Load extension
    pcall(require('telescope').load_extension, 'dot')

    -- Register mappings
    wk.register({
      ['.'] = {
        name = 'Shortcut',
        s = { '<cmd>Telescope dot stories<cr>', 'Browse [S]tories' },
      },
    }, { prefix = '<leader>' })
  end,
}
