vim.g.mapleader = ' '

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
require('plugincfg')

-- Scripts initialization
require('neoscroll').setup()

local lspconfig = require('lspconfig')
local coq = require('coq')

local servers = { 'clangd', 'rust_analyzer', 'pyright' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    -- on_attach = my_custom_on_attach,
  }))
end
