local completion = {}
local conf = require('modules.completion.config')

completion['hrsh7th/vim-vsnip'] = {
  event = 'InsertCharPre',
  config = conf.vim_vsnip
}

completion['nvim-telescope/telescope.nvim'] = {
  cmd = 'Telescope',
  config = conf.telescope,
  requires = {
    {'nvim-lua/popup.nvim', opt = true},
    {'nvim-lua/plenary.nvim',opt = true},
    {'nvim-telescope/telescope-fzy-native.nvim',opt = true},
  }
}

completion['neoclide/coc.nvim'] = {
  commit = "03c9add7cd867a013102dcb45fb4e75304d227d7"
}



return completion
