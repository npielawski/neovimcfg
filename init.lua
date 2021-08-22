-- Load the plugins
require('plugins')

-- Colors in the terminal and text is unicode by default
vim.opt.termguicolors = true
vim.opt.encoding = 'UTF-8'

-- Sets the theme
vim.opt.background = 'dark'
vim.cmd('colorscheme deus')
vim.cmd('syntax enable')
vim.g.deus_termcolors = 256
-- Sets up airline
vim.g.airline_powerline_fonts = 1
vim.g.airline_mode_map = {
    i = 'INSERT',
    ic= 'INSERT'
}

-- Loading the lua configuration files
require('mappings')
require('preferences')
require('autocmds')
require('plugincfg')

-- Scripts initialization
require('neoscroll').setup()

local lsp = require('lspconfig')
local coq = require('coq')
lsp.pylsp.setup{coq.lsp_ensure_capabilities()}

