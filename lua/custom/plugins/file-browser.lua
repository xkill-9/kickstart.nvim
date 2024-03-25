return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    local wk = require 'which-key'

    -- Load extension
    pcall(require('telescope').load_extension, 'file_browser')

    -- Register mappings
    wk.register({
      f = {
        name = '[F]ile',
        b = { '<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>', '[B]rowse Files' },
      },
    }, {
      prefix = '<leader>',
    })
  end,
}
