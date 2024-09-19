-- Filetype commands
vim.cmd("filetype plugin on")
-- Characters are not hidden anymore
vim.cmd("au FileType * set conceallevel=0")
-- Disables auto commenting
vim.cmd("au FileType * set fo-=c fo-=r fo-=o")

-- 2 tabs for HTML/JS/TS files
vim.cmd("au FileType html,typescript,javascript setlocal tabstop=2 shiftwidth=2")

