-- Filetype commands
vim.cmd('filetype plugin on')
-- Characters are not hidden anymore
vim.cmd('au FileType * set conceallevel=0')
-- Disables auto commenting
vim.cmd('au FileType * set fo-=c fo-=r fo-=o')
vim.cmd('au FileType python COQnow')
vim.cmd('au FileType rust COQnow')
vim.cmd('au BufEnter CHADtree set laststatus=0')
