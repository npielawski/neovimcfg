todo_symbol = "○"
done_symbol = "●"
event_symbol = "↺"

vim.cmd("iabbrev todo " .. todo_symbol)
vim.cmd("iabbrev done " .. done_symbol)
vim.cmd("iabbrev event " .. event_symbol)

vim.opt.formatprg      = "sort -V" -- Sorts the lines with gq
vim.opt.showtabline    = 0
vim.opt.number         = false
vim.opt.relativenumber = false
vim.opt.cursorline     = false
vim.opt.cursorcolumn   = false
vim.opt.scrollbind     = true
vim.opt.cc             = "0"
vim.opt.laststatus     = 0
vim.opt.ruler          = false
vim.opt.linebreak      = true
vim.o.breakindent      = true
vim.o.showbreak        = "  "
vim.cmd("set shortmess+=I")
-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_create_autocmd("BufReadPost", {
    command=[[
        set filetype=journal

        syntax match JournalAll /.*/
        syntax match JournalTodo /^○.*/
        syntax match JournalDone /^●.*/
        syntax match JournalEvent /^↺.*/
        syntax match JournalNote /^-.*/
        syntax match JournalMoved /^>.*/
        syntax match JournalHeader /^=.*/

        highlight JournalAll    ctermfg=7
        highlight JournalHeader cterm=bold ctermfg=2
        highlight JournalDone   ctermfg=8
        highlight JournalTodo   ctermfg=15
        highlight JournalEvent  ctermfg=6
        highlight JournalMoved  ctermfg=5
        highlight JournalNote   ctermfg=3
        highlight VertSplit     ctermfg=0  ctermbg=0
        highlight EndOfBuffer   ctermfg=black ctermbg=black
    ]],
    group=vim.api.nvim_create_augroup("JournalSyntax", {clear = true})
})

vim.api.nvim_set_keymap(
    "n",
    "<leader>c",
    ":!gcal -s 1 --highlighting=no -K<CR>",
    {noremap = true, silent = true}
)

