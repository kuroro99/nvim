local bind = require('keymap.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

-- default map
local def_map = {
    ["n|<m-H>"]      = map_cmd('<C-w>h'):with_noremap(),
    ["n|<m-L>"]      = map_cmd('<C-w>l'):with_noremap(),
    ["n|<m-J>"]      = map_cmd('<C-w>j'):with_noremap(),
    ["n|<m-K>"]      = map_cmd('<C-w>k'):with_noremap(),
    ["i|<m-H>"]      = map_cmd('<exc><C-w>h'):with_noremap(),
    ["i|<m-L>"]      = map_cmd('<exc><C-w>l'):with_noremap(),
    ["i|<m-J>"]      = map_cmd('<exc><C-w>j'):with_noremap(),
    ["i|<m-K>"]      = map_cmd('<exc><C-w>k'):with_noremap(),
    ["n|<m-1>"]	     = map_cr('tabn 1'):with_noremap():with_silent(),
    ["n|<m-2>"]	     = map_cr('tabn 2'):with_noremap():with_silent(),
    ["n|<m-3>"]	     = map_cr('tabn 3'):with_noremap():with_silent(),
    ["n|<m-4>"]	     = map_cr('tabn 4'):with_noremap():with_silent(),
    ["n|<m-5>"]	     = map_cr('tabn 5'):with_noremap():with_silent(),
    ["n|<m-6>"]	     = map_cr('tabn 6'):with_noremap():with_silent(),
    ["n|<m-7>"]	     = map_cr('tabn 7'):with_noremap():with_silent(),
    ["n|<m-8>"]	     = map_cr('tabn 8'):with_noremap():with_silent(),
    ["n|<m-9>"]	     = map_cr('tabn 9'):with_noremap():with_silent(),
    ["n|<m-0>"]	     = map_cr('tabn 10'):with_noremap():with_silent(),
  ---- command line
    ["c|<C-b>"]      = map_cmd('<Left>'):with_noremap(),
    ["c|<C-f>"]      = map_cmd('<Right>'):with_noremap(),
    ["c|<C-a>"]      = map_cmd('<Home>'):with_noremap(),
    ["c|<C-e>"]      = map_cmd('<End>'):with_noremap(),
}

bind.nvim_load_mapping(def_map)
