return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme catppuccin-macchiato]])
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        priority = 1000,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { },
    }
}
