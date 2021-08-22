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
    use 'enricobacis/vim-airline-clock'

    -- Ident guides
    use 'Yggdroot/indentLine'

    -- Smooth scrolling
    use 'karb94/neoscroll.nvim'

    -- Git
    use 'tpope/vim-fugitive'

    -- File explorer
    use {'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps'}

    -- Code completion
    use 'neovim/nvim-lspconfig'
    use {'ms-jpq/coq_nvim', branch = 'coq'} -- main one
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'} -- 9000+ Snippets

    -- Commenting functions
    use 'preservim/nerdcommenter'

    -- Shortcuts in Lua
    use 'svermeulen/vimpeccable'

    -- Icons (must be loaded last!)
    use 'ryanoasis/vim-devicons'
end)
