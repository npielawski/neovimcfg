-- This file can be loaded by calling `lua require('useins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'enricobacis/vim-airline-clock'

    -- Ident guides
    use {'Yggdroot/indentLine', event = 'BufEnter'}

    -- Diagnostics
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('trouble').setup {
            }
        end
    }

    -- Commenting functions
    use 'preservim/nerdcommenter'

    -- Shortcuts in Lua
    use 'svermeulen/vimpeccable'

    -- Plugin to visualize the undo tree
    use 'mbbill/undotree'

    -- Fuzzy finder
    use {'junegunn/fzf', run = 'fzf#install()' }
    use 'junegunn/fzf.vim'
    use 'gfanto/fzf-lsp.nvim'

    -- Typst support
    use {'kaarmu/typst.vim', ft = {'typ'}}

    -- Icons (must be loaded last!)
    use 'ryanoasis/vim-devicons'

    -- Copilot
    use 'github/copilot.vim'
end)
