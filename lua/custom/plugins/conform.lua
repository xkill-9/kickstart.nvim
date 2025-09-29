return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>bf',
      function()
        require('conform').format { async = true, lsp_format = 'never' }
      end,
      mode = '',
      desc = '[B]iome [F]ormat',
    },
  },
  opts = {
    format_on_save = {
      timeout_ms = 500,
    },
    default_format_opts = {
      lsp_format = 'fallback',
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      ['javascript'] = { 'biome' },
      ['javascriptreact'] = { 'biome' },
      ['typescript'] = { 'biome' },
      ['typescriptreact'] = { 'biome' },
      ['json'] = { 'biome' },
      ['css'] = { 'biome' },
    },
  },
}
