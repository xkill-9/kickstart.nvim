vim.keymap.set('n', '<leader>en', function()
    require('telescope.builtin').git_files({
        cwd = '~/.config/nvim',
        prompt_title = '~ Neovim Config ~'
    })
end, { desc = '[E]dit [N]eovim' })
vim.keymap.set('n', '<leader>gs', require('telescope.builtin').git_status, { desc = '[G]it [S]tatus' })
