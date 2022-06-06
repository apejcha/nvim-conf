require('apejcha.plugins')
require('apejcha.lsp')
require('apejcha.options')
require('apejcha.keymaps')
require('apejcha.telescope')
require('apejcha.cmp')
require('apejcha.treesitter')
require('apejcha.terminal')
require('colorizer').setup()
vim.cmd[[colorscheme sonokai]]
vim.cmd('highlight LineNr ctermfg=DarkGrey guifg=Yellow')

--Lsp coolors
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
