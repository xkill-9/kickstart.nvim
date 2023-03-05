vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.autoindent = true
vim.opt.title = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.wrap = false
vim.opt.path:append { "**" }
vim.opt.wildignore:append { "*/node_modules/*" }

-- MAPS

local keymap = vim.keymap

keymap.set("n", "<C-a>", "gg<S-v>G"); -- Select all

-- Increment/Decrement numbers
keymap.set('n', '+', '<C-a>');
keymap.set('n', '-', '<C-x>');

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })
keymap.set("n", "<leader>qq", vim.cmd.Ex)

-- Move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Delete word backwards
keymap.set('n', 'dw', 'vb"_d')

-- New tabs
keymap.set('n', '<leader>nt', ':tabedit<Return>', { silent = true, desc = "[N]ew [T]ab" })

-- Move through windows/buffers
keymap.set('', 'sh', '<C-w>h', { desc = "Move left" })
keymap.set('', 'sk', '<C-w>k', { desc = "Move down" })
keymap.set('', 'sj', '<C-w>j', { desc = "Move up" })
keymap.set('', 'sl', '<C-w>l', { desc = "Move right" })

-- Close window
keymap.set('n', '<leader>cw', '<C-w>q', { desc = "[C]lose [Window]" })
