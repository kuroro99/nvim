local editor = {}
local conf = require('modules.editor.config')

editor['rhysd/accelerated-jk'] = {
  opt = true
}

editor['itchyny/vim-cursorword'] = {
  event = {'BufReadPre','BufNewFile'},
  config = conf.vim_cursorwod
}

return editor
