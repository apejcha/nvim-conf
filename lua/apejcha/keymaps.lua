local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

--Telescope
keymap('n', '<C-p>','<cmd>Telescope find_files<cr>',opts)

--Harpoon
keymap('n','<C-e>','<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>',opts)
keymap('n','<C-H>','<cmd>lua require("harpoon.mark").add_file()<CR>',opts)
keymap('n','<C-1>','<cmd>lua require("harpoon.ui").nav_file(1)<CR>',opts)
keymap('n','<C-2>','<cmd>lua require("harpoon.ui").nav_file(2)<CR>',opts)
keymap('n','<C-3>','<cmd>lua require("harpoon.ui").nav_file(3)<CR>',opts)
keymap('n','<C-4>','<cmd>lua require("harpoon.ui").nav_file(4)<CR>',opts)
keymap('n','<C-J>','<cmd>lua require("harpoon.ui").nav_next()<CR>',opts)
keymap('n','<C-K>','<cmd>lua require("harpoon.ui").nav_prev()<CR>',opts)
