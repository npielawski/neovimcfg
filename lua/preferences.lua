-- Preferences
vim.opt.ignorecase     = true -- Ignores the case when typing commands
vim.opt.wrap           = false -- Wraps the lines
vim.opt.mouse          = 'n' -- Mouse support enabled in n mode
vim.opt.number         = true -- Show the line number at cursor
vim.opt.relativenumber = true -- Show the relative lines around cursor
vim.opt.clipboard:append('unnamedplus') -- Use system clipboard
vim.opt.pumblend       = 15 -- Adds transparency to the popup [0, 100]
vim.opt.cursorline     = true -- Shades the line of the cursor
vim.opt.confirm        = true -- Ask if you want to save when quitting
vim.opt.whichwrap:append('<>hl[]') -- Allows some chars to change line
vim.opt.list           = true -- Makes some characters visible
vim.opt.listchars      = 'trail:•' -- Makes trailing spaces visible
vim.opt.colorcolumn    = '80' -- Adds a shaded ruler to limit line length
-- Managing <Tab>
vim.opt.tabstop        = 4 -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth     = 4 -- Number of spaces to use for (auto)indent
vim.opt.expandtab      = true -- Replaces tab and indents with spaces

-- Indenting settings
vim.g.indentLine_char = '•'
vim.g.indentLine_leadingSpaceChar = '•'
vim.g.indentLine_leadingSpaceEnabled = 1
vim.g.indentLine_setColors = 1
vim.g.indentLine_color_gui = '#444444'
-- Disable indenting in CHADTree and help
-- See: https://github.com/Yggdroot/indentLine/issues/335
vim.g.indentLine_fileTypeExclude = {'CHADTree', 'help'}
