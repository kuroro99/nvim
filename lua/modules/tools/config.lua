local config = {}

function config.vim_vista()
  vim.g['vista#renderer#enable_icon'] = 0
  vim.g.vista_sidebar_width = 40
  vim.g.vista_highlight_whole_line = 1
  vim.g.vista_default_executive = 'coc'
  vim.g.vista_echo_cursor_strategy = 'floating_win'
  vim.g.vista_executive_for = {
    c = 'coc',
    cpp = 'coc',
    java = 'coc',
  }
end

return config
