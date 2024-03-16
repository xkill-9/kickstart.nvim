return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  keys = function()
    local harpoon = require 'harpoon'

    return {
      {
        '<leader>ha',
        function()
          harpoon:list():append()
        end,
        desc = '[A]ppend to Harpoon',
      },
      {
        '<leader>hl',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Harpoon [L]ist',
      },
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
