local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

--Telescope
keymap('n', '<C-p>','<cmd>Telescope find_files<cr>',opts)

--Harpoon
keymap('n','<C-e>','<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>',opts)
keymap('n','<C-H>','<cmd>lua require("harpoon.mark").add_file()<CR>',opts)
keymap('n','<C-&>','<cmd>lua require("harpoon.ui").nav_file(1)<CR>',opts)
keymap('n','<C-*>','<cmd>lua require("harpoon.ui").nav_file(2)<CR>',opts)
keymap('n','<C-(>','<cmd>lua require("harpoon.ui").nav_file(3)<CR>',opts)
keymap('n','<C-)>','<cmd>lua require("harpoon.ui").nav_file(4)<CR>',opts)
keymap('n','<leader>J','<cmd>lua require("harpoon.ui").nav_next()<CR>',opts)
keymap('n','<leader>K','<cmd>lua require("harpoon.ui").nav_prev()<CR>',opts)

--Neogit
keymap('n','<leader>ng','<cmd>Neogit<CR>',opts)

--NvimTree
keymap('n','<leader>T','<cmd>NvimTreeToggle<CR>', opts)

