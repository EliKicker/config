vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

--allow exiting terminal with <ESC>
vim.cmd [[ tnoremap <ESC> <C-\><C-n> ]]

--allow switching buffers with Alt + Direction
vim.cmd [[ tnoremap <A-h> <C-\><C-N><C-w>h ]]
vim.cmd [[ tnoremap <A-j> <C-\><C-N><C-w>j ]]
vim.cmd [[ tnoremap <A-k> <C-\><C-N><C-w>k ]]
vim.cmd [[ tnoremap <A-l> <C-\><C-N><C-w>l ]]

vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')
