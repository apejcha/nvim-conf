require('apejcha.plugins')
require('apejcha.lsp')
require('apejcha.options')
require('apejcha.keymaps')
require('apejcha.telescope')
require('apejcha.cmp')
require('apejcha.treesitter')
require('apejcha.terminal')
require('colorizer').setup()
vim.cmd[[colorscheme gruvbox]]
vim.cmd('highlight LineNr ctermfg=DarkGrey guifg=Yellow')
vim.g.auto_save = 1
vim.g.gruvbox_contrast_dark = 'hard'
vim.g.vimtex_view_general_viewer = 'mupdf.inotify'
