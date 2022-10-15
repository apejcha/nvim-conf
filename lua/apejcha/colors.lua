
--Colorscheme
vim.g.catppuccin_flavour = "mocha"

require("catppuccin").setup({
    integrations = {
        native_lsp = {
            enabled = true,
            virtual_text = {
                warnings = {"bold"},
                errors = {"bold"},
                hints = {"bold"},
                information = {"bold"},
            },
        }
    }
})

vim.cmd [[colorscheme catppuccin]]

vim.cmd('highlight LineNr ctermfg=DarkGrey guifg=Yellow')
vim.cmd('highlight DiagnosticError guibg=clear guifg=#db4b4b')
vim.cmd('highlight DiagnosticWarn guibg=clear guifg=#fbd084')
vim.cmd('highlight DiagnosticInfo guibg=clear guifg=#0db9d7')
vim.cmd('highlight DiagnosticHint guibg=clear guifg=#10B981')


require("lualine").setup{
    options ={
        theme = 'auto'
    },
    sections = {
        lualine_x = {'encoding','filetype'},
    }
}
