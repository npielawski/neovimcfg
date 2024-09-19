return {
    "nvim-telescope/telescope.nvim",
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<CR>", "n" },
        { "<leader>fg", "<cmd>Telescope live_grep<CR>", "n" },
        { "<leader>fb", "<cmd>Telescope buffers<CR>", "n" },
        { "<leader>fh", "<cmd>Telescope help_tags<CR>", "n" },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "nvim-telescope/telescope-fzf-native.nvim",
        "BurntSushi/ripgrep",
    }
}
