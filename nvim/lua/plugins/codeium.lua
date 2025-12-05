return {
    'Exafunction/windsurf.vim',
    event = 'BufEnter',
    config = function()
        vim.keymap.set('i', '<c-l>', function() return vim.fn['codeium#CycleCompletions'](1) end,
            { expr = true, silent = true })
        vim.keymap.set('i', '<c-j>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
}
