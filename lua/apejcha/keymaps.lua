local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap
local termopts = { silent = true }

keymap('n', '<C-p>','<cmd>Telescope find_files<cr>',opts)
