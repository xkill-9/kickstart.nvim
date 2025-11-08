return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>h', group = '[H]arpoon' },
    {
      '<leader>ha',
      function()
        require('harpoon'):list():add()
      end,
      desc = '[A]ppend',
    },
    {
      '<leader>hl',
      function()
        require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())
      end,
      desc = '[L]ist',
    },
    {
      '<C-P>',
      function()
        require('harpoon'):list():prev()
      end,
      desc = 'Harpoon previous buffer',
    },
    {
      '<C-N>',
      function()
        require('harpoon'):list():next()
      end,
      desc = 'Harpoon next buffer',
    },
  },
  config = function()
    require('harpoon'):setup {}
  end,
}
