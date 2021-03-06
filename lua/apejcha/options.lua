local options = {
  number=true,
  tabstop=4,
  shiftwidth=4,
  relativenumber=true,
  mouse='a',
  expandtab=true,
  hidden=true,
  wrap=false,
  termguicolors=true,
  scrolloff=8,
  clipboard = "unnamedplus",
}

for k,v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.g.mapleader =" "
