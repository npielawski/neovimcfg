vim.g.mapleader = ' '
-- Mappings
local vimp = require('vimp')
vimp.imap('jj', '<Esc>')
vimp.imap('jk', '<Esc>')
vimp.imap('kj', '<Esc>')
vimp.nnoremap(':', ';')
vimp.nnoremap(';', ':')
vimp.noremap('<up>', '<nop>')
vimp.noremap('<down>', '<nop>')
vimp.noremap('<left>', '<nop>')
vimp.noremap('<right>', '<nop>')
-- ChadTree
vimp.nnoremap('<C-t>', '<cmd>CHADopen<CR>')
-- Python
vimp.map('<Leader>b', ':Black<CR>')
vimp.map('<Leader>r', ':w<CR>:!poetry run python3 %<CR>')
