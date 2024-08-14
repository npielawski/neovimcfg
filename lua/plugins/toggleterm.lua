return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true,
        keys = {
            { "<leader>t", function() require("toggleterm").toggle() end },
        }
    }
}
