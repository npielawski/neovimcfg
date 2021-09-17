-- CHADTree
local chadtree_settings = {
    ['theme.discrete_colour_map'] = {
        black = '#21222c',
        red = '#ff5555',
        green = '#98c379',
        yellow = '#e5c07b',
        blue = '#83a598',
        magenta = '#c678dd',
        cyan = '#70c0ba',
        white = '#eaeaea',
        bright_black = '#666666',
        bright_red = '#ec3e45',
        bright_green = '#90c966',
        bright_yellow = '#edbf69',
        bright_blue = '#73ba9f',
        bright_magenta = '#c858e9',
        bright_cyan = '#2bcec2',
        bright_white = '#ffffff'
    },
    ['keymap.secondary'] = {'<2-leftmouse>'},
    ['keymap.tertiary'] = {'<tab>', '<middlemouse>'}
}
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)

-- LSP
-- Add nice icons for LSP (called diagnostics symbols)
-- Source: https://github.com/neovim/nvim-lspconfig/wiki/UI-customization
local signs = { Error = ' ', Warning = ' ', Hint = ' ', Information = ' ' }

for type, icon in pairs(signs) do
    local hl = 'LspDiagnosticsSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end

-- Vimspector
vim.g.vimspector_enable_mappings = 'HUMAN'
vim.g.vimspector_install_gadgets = { 'debugpy' }

