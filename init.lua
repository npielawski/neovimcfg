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

-- LSP
-- Add nice icons for LSP (called diagnostics symbols)
-- Source: https://github.com/neovim/nvim-lspconfig/wiki/UI-customization
local signs = { Error = ' ', Warning = ' ', Hint = ' ', Information = ' ' }

for type, icon in pairs(signs) do
    local hl = 'LspDiagnosticsSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end
