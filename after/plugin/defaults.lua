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

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })
keymap.set("n", "<leader>qq", vim.cmd.Ex)

-- Move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
