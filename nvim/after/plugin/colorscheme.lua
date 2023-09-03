-- kanagawa
require('kanagawa').setup({
    statementStyle = { bold = false },
    overrides = function(colors)
        return {
            Boolean = { fg = colors.theme.syn.type, bold = false },
        }
    end,
})

vim.cmd("colorscheme kanagawa")
