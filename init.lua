-- Load the plugins
require('config.lazy')

-- Colors in the terminal and text is unicode by default
vim.opt.termguicolors = true
vim.opt.encoding = 'UTF-8'

-- Loading the lua configuration files
require('mappings')
require('preferences')
require('autocmds')

