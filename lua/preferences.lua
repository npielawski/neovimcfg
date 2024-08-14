-- Configuration
vim.g.python3_host_prog = "/opt/homebrew/bin/python3"

-- Preferences
vim.opt.ignorecase     = true      -- Ignores the case when typing commands
vim.opt.wrap           = false     -- Wraps the lines
vim.opt.mouse          = "n"       -- Mouse support enabled in n mode
vim.opt.number         = true      -- Show the line number at cursor
vim.opt.relativenumber = true      -- Show the relative lines around cursor
vim.opt.pumblend       = 15        -- Adds transparency to the popup [0, 100]
vim.opt.cursorline     = true      -- Shades the line of the cursor
vim.opt.confirm        = true      -- Ask if you want to save when quitting
vim.opt.whichwrap:append("<>hl[]") -- Allows some chars to change line
vim.opt.list           = true      -- Makes some characters visible
vim.opt.listchars      = "trail:•" -- Makes trailing spaces visible
vim.opt.showmode       = false     -- Doesn't show the mode in the status line
vim.opt.colorcolumn    = "88"      -- Adds a shaded ruler to limit line length
vim.opt.undofile       = true      -- Saves undos/redos in a file after closing nvim
vim.opt.undolevels     = 10000     -- Number of undos/redos saved
vim.opt.formatprg      = "sort -V" -- Sorts the lines with gq
-- Managing <Tab>
vim.opt.tabstop        = 4         -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth     = 4         -- Number of spaces to use for (auto)indent
vim.opt.expandtab      = true      -- Replaces tab and indents with spaces
