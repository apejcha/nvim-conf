local options = {
  number=true,
  tabstop=2,
  shiftwidth=2,
  relativenumber=true,
  mouse='a',
  expandtab=true,
  hidden=true,
  wrap=true,
  termguicolors=true,
  scrolloff=8,
  clipboard = "unnamedplus",
}

for k,v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.g.mapleader =" "
