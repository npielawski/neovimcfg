-- Mappings
local vimp = require('vimp')
vimp.noremap('<C-C>', '<Esc>')
vimp.inoremap('<C-C>', '<Esc>')
--vimp.nnoremap(':', ';')
--vimp.nnoremap(';', ':')
vimp.noremap('<up>', '<C-W><Up>')
vimp.noremap('<down>', '<C-W><Down>')
vimp.noremap('<left>', '<C-W><Left>')
vimp.noremap('<right>', '<C-W><Right>')
vimp.tnoremap('<Esc>', '<C-\\><C-n>')

-- ChadTree
vimp.nnoremap('<leader>c', '<cmd>CHADopen<cr>')

-- UndoTree
vimp.noremap('<Leader>u', '<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>')
-- Python
vimp.map('<Leader>b', ':Black<cr>')
vimp.map('<Leader>r', ':w<cr>:!poetry run python3 %<cr>')

-- fzf
vimp.nnoremap('<Leader>f', '<cmd>Files<cr>')
vimp.nnoremap('<Leader>g', '<cmd>GFiles<cr>')
vimp.nnoremap('<Leader>l', '<cmd>Lines<cr>')

-- Vimspector
-- for normal mode - the word under the cursor
vimp.nmap('<Leader>di', '<Plug>VimspectorBalloonEval')
-- for visual mode, the visually selected text
vimp.xmap('<Leader>di', '<Plug>VimspectorBalloonEval')

-- Trouble
vimp.nnoremap({"silent"}, "<leader>xx", "<cmd>TroubleToggle<cr>")
vimp.nnoremap({"silent"}, "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
vimp.nnoremap({"silent"}, "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>")
vimp.nnoremap({"silent"}, "<leader>xl", "<cmd>TroubleToggle loclist<cr>")
vimp.nnoremap({"silent"}, "<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
vimp.nnoremap({"silent"}, "gR", "<cmd>TroubleToggle lsp_references<cr>")

-- Vim Test
vimp.nmap({"silent"}, "<leader>tt", "<cmd>TestNearest<cr>")
vimp.nmap({"silent"}, "<leader>tn", "<cmd>TestNearest<cr>")
vimp.nmap({"silent"}, "<leader>tf", "<cmd>TestFile<cr>")
vimp.nmap({"silent"}, "<leader>ts", "<cmd>TestSuite<cr>")
vimp.nmap({"silent"}, "<leader>tl", "<cmd>TestLast<cr>")
vimp.nmap({"silent"}, "<leader>tv", "<cmd>TestVisit<cr>")

