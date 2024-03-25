return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  keys = function()
    local harpoon = require 'harpoon'
    local wk = require 'which-key'

    -- Register mappings
    wk.register({
      h = {
        name = '[H]arpoon',
        a = {
          function()
            harpoon:list():append()
          end,
          '[A]ppend',
        },
        l = {
          function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          '[L]ist',
        },
      },
    }, { prefix = '<leader>' })
    return {
      {
        '<C-P>',
        function()
          harpoon:list():prev()
        end,
        desc = 'Harpoon previous buffer',
      },
      {
        '<C-N>',
        function()
          harpoon:list():next()
        end,
        desc = 'Harpoon next buffer',
      },
    }
  end,
  config = function()
    require('harpoon'):setup {}
  end,
}
