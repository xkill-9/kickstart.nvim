return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  keys = {
    {
      "<leader>fb",
      function()
        require('oil').open_float()
      end,
      desc = "[F]ile [B]rowser"
    }
  },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
