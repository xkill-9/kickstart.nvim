return {
  'lewis6991/gitsigns.nvim',
  opts = {
    on_attach = function(bufnr)
      local gitsigns = require('gitsigns');
      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map('n', ']c', function()
        if vim.wo.diff then
          vim.cmd.normal({ ']c', bang = true })
        else
          gitsigns.nav_hunk('next')
        end
      end, { desc = 'Next [C]hange' })

      map('n', '[c', function()
        if vim.wo.diff then
          vim.cmd.normal({ '[c', bang = true })
        else
          gitsigns.nav_hunk('prev')
        end
      end, { desc = 'Previouse [C]hange' })

      map('n', '<leader>bl', function() gitsigns.blame_line { full = true } end,
        { desc = '[B]lame [L]ine' })
      map('n', '<leader>tb', gitsigns.toggle_current_line_blame,
        { desc = '[T]oggle [B]lame' })
    end
  }
}
