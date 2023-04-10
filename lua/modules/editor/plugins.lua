local editor = {}
local conf = require('modules.editor.config')

editor['itchyny/vim-cursorword'] = {
  event = {'BufReadPre','BufNewFile'},
  config = conf.vim_cursorwod
}

editor['zalgo3/vim-chatgpt'] = {
  branch = "nvim"
}
return editor
