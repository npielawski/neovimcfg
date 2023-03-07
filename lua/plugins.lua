-- This file can be loaded by calling `lua require('useins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme
    --use 'ajmwagar/vim-deus'
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'enricobacis/vim-airline-clock'

    -- Ident guides
    use {'Yggdroot/indentLine', event = 'BufEnter'}

    -- Smooth scrolling
    use 'karb94/neoscroll.nvim'

    -- Git
    --use {'tpope/vim-fugitive', cmd = {'Git'}}

    -- File explorer
    --use {'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps'}

    -- Code completion
    use {'neovim/nvim-lspconfig'}
    use {'ms-jpq/coq_nvim', branch = 'coq', run = 'python3 -m coq deps'} -- main one
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'} -- 9000+ Snippets
    use {'ms-jpq/coq.thirdparty', branch = '3p'}

    -- Diagnostics
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('trouble').setup {
            }
        end
    }

    -- Python prettifier
    --use {'psf/black'}

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

    -- Code inspector
    --use 'puremourning/vimspector'

    -- Code testing shortcuts
    --use 'vim-test/vim-test'

    -- Icons (must be loaded last!)
    use 'ryanoasis/vim-devicons'
end)
