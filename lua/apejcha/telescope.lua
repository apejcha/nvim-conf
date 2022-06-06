local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings ={
      i = {
       ['<C-p>']=actions.close,
       ['<C-k>']=actions.move_selection_previous,
       ['<C-j>']=actions.move_selection_next,
      },
      n = {
       ['<esc>']=actions.close,
       ['<k>']=actions.move_selection_previous,
       ['<j>']=actions.move_selection_next,
      },
    }
  }
}

