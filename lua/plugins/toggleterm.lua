return {
    "akinsho/toggleterm.nvim",
    lazy = true,
    cmd = {"ToggleTerm"},
    keys = {
        { "<C-j>", "<cmd>ToggleTerm direction=float<cr>", "n"},
        { "<C-k>", "<cmd>ToggleTerm direction=horizontal<cr>", "n"},
        { "<C-h>", "<cmd>ToggleTerm direction=vertical<cr>", "n"},
    },
    config = function()
        require("toggleterm").setup({
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return 60
                end
            end,
            open_mapping = [[<C-\>]],
            insert_mappings = true,
            direction = "horizontal",
            shade_terminals = true,
            start_in_insert = true,
            close_on_exit = true,
            float_opts = {
                border = "rounded",
            },
        })

        vim.keymap.set(
            "t",
            "C-\\",
            "<C-\\><C-n><cmd>ToggleTerm<cr>",
            { noremap = true, silent = true }
        )
    end,
}
