vim.g.mapleader = ' '

-- Load the plugins
require('plugins')

-- Colors in the terminal and text is unicode by default
vim.opt.termguicolors = true
vim.opt.encoding = 'UTF-8'

-- Sets the theme
vim.opt.background = 'dark'
vim.cmd.colorscheme 'catppuccin'
vim.cmd.syntax 'enable'
vim.g.deus_termcolors = 256
-- Sets up airline
vim.g['airline_theme'] = 'zenburn'
vim.g['airline#extensions#tabline#enabled'] = true
vim.g['airline#extensions#tabline#show_buffers'] = false
vim.g.airline_powerline_fonts = true
vim.g.airline_mode_map = {
    i = 'INSERT',
    ic= 'INSERT'
}
vim.cmd('set laststatus=3')

-- Loading the lua configuration files
require('mappings')
require('preferences')
require('autocmds')

