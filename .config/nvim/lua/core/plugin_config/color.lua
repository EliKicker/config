--making sure that background stays same across colorschemes...
--vim.cmd [[ au ColorScheme * hi Normal ctermbg=None ]]

--making sure we allow filetype specific syntaxhighlighting
vim.cmd [[ syntax on ]]
vim.cmd [[ filetype plugin indent on ]]

--make gruvbox default color scheme...
vim.o.termguicolors = true
vim.cmd [[ colorscheme gruvbox ]]

--init molokai...
--vim.cmd [[ let g:molokai_original = 1 ]]

--ini monokai-pro...
--require("monokai-pro").setup {}
