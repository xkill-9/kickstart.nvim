return {
  'vim-test/vim-test',
  dependencies = { 'preservim/vimux' },
  keys = {
    { '<leader>t', '<cmd>TestNearest<cr>' },
    { '<leader>T', '<cmd>TestFile<cr>' },
    { '<leader>a', '<cmd>TestSuite<cr>' },
    { '<leader>l', '<cmd>TestLast<cr>' },
    { '<leader>g', '<cmd>TestVisit<cr>' },
  },
  init = function()
    vim.cmd "let test#strategy = 'vimux'"
  end,
}
