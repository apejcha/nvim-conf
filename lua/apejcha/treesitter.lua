local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {'go','c','cpp','lua','rust','typescript','html','c_sharp','tsx','javascript'},
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
}
