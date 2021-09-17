-- Mappings
local vimp = require('vimp')
vimp.imap('jj', '<Esc>')
vimp.imap('jk', '<Esc>')
vimp.imap('kj', '<Esc>')
--vimp.nnoremap(':', ';')
--vimp.nnoremap(';', ':')
vimp.noremap('<up>', '<C-W><Up>')
vimp.noremap('<down>', '<C-W><Down>')
vimp.noremap('<left>', '<C-W><Left>')
vimp.noremap('<right>', '<C-W><Right>')
vimp.tnoremap('<Esc>', '<C-\\><C-n>')

-- ChadTree
vimp.nnoremap('<C-t>', '<cmd>CHADopen<CR>')

-- UndoTree
vimp.noremap('<Leader>t', '<cmd>UndotreeToggle<CR><cmd>UndotreeFocus<CR>')
-- Python
vimp.map('<Leader>b', ':Black<CR>')
vimp.map('<Leader>r', ':w<CR>:!poetry run python3 %<CR>')

-- fzf
vimp.nnoremap('<Leader>f', '<cmd>Files<CR>')
vimp.nnoremap('<Leader>l', '<cmd>Lines<CR>')

-- Vimspector
-- for normal mode - the word under the cursor
vimp.nmap('<Leader>di', '<Plug>VimspectorBalloonEval')
-- for visual mode, the visually selected text
vimp.xmap('<Leader>di', '<Plug>VimspectorBalloonEval')

-- Trouble
vimp.nnoremap({"silent"}, "<leader>xx", "<cmd>TroubleToggle<cr>")
vimp.nnoremap({"silent"}, "<leader>xw", "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>")
vimp.nnoremap({"silent"}, "<leader>xd", "<cmd>TroubleToggle lsp_document_diagnostics<cr>")
vimp.nnoremap({"silent"}, "<leader>xl", "<cmd>TroubleToggle loclist<cr>")
vimp.nnoremap({"silent"}, "<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
vimp.nnoremap({"silent"}, "gR", "<cmd>TroubleToggle lsp_references<cr>")

