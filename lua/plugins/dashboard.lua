return {
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("dashboard").setup {
                theme = "hyper",
                config = {
                    week_header = {
                        enable = true,
                        concat = "(week " .. os.date("%V") .. ")",
                    },
                    shortcut = {
                        {
                            desc = "󰒲 Lazy",
                            action = "Lazy",
                            key = "l",
                            group = "String",
                        },
                        {
                            icon = " ",
                            desc = "Files",
                            action = "Telescope find_files",
                            key = "f",
                            group = "Label",
                        },
                        {
                            icon = " ",
                            desc = "Browser",
                            action = "Telescope file_browser",
                            key = "b",
                            group = "@tag"
                        },
                        {
                            icon = "󱎸 ",
                            desc = "Find text",
                            action = "Telescope live_grep",
                            key = "r",
                            group = "Constant"
                        },
                    },
                },
            }
        end,
        dependencies = {
            { "nvim-tree/nvim-web-devicons" }
        }
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        }
    }
}
