vim.o.compatible = false
vim.cmd('filetype on')
vim.cmd('filetype plugin on')
vim.cmd('syntax on')
vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.cursorline = true
--vim.wo.cursorcolumn = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.expandtab = true
vim.o.backup = false
vim.wo.scrolloff = 10
vim.wo.wrap = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showcmd = true
vim.o.showmode = true
vim.o.showmatch = true
vim.o.hlsearch = true
vim.o.history = 1000
vim.cmd('filetype indent on')
vim.o.wildmenu = true
vim.o.wildmode = 'list:longest'
vim.o.wildignore = '*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'
vim.cmd('colorscheme tokyonight')
