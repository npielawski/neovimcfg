-- This file can be loaded by calling `lua require('useins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme
    use 'ajmwagar/vim-deus'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use {'enricobacis/vim-airline-clock', event = 'VimEnter'}

    -- Ident guides
    use {'Yggdroot/indentLine', event = 'BufEnter'}

    -- Smooth scrolling
    use 'karb94/neoscroll.nvim'

    -- Git
    use {'tpope/vim-fugitive', cmd = {'Git'}}

    -- File explorer
    use {'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps'}

    -- Code completion
    use {'neovim/nvim-lspconfig', ft = {'py'}}
    use {'ms-jpq/coq_nvim', branch = 'coq', ft = {'py'}} -- main one
    use {'ms-jpq/coq.artifacts', branch = 'artifacts', ft = {'py'}} -- 9000+ Snippets

    -- Python prettifier
    use {'psf/black', ft = {'py'}}

    -- Commenting functions
    use 'preservim/nerdcommenter'

    -- Shortcuts in Lua
    use 'svermeulen/vimpeccable'

    -- Plugin to visualize the undo tree
    use 'mbbill/undotree'

    -- Icons (must be loaded last!)
    use 'ryanoasis/vim-devicons'
end)
