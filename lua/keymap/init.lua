local bind = require('keymap.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_args = bind.map_args
require('keymap.config')

local plug_map = {
    ---- Plugin nvim-tree
    ["n|<space>nt"]      = map_cr('NERDTreeToggle'):with_noremap():with_silent(),
    ---- Plugin Floaterm
    --["n|<A-d>"]          = map_cu('Lspsaga open_floaterm'):with_noremap():with_silent(),
    --["t|<A-d>"]          = map_cu([[<C-\><C-n>:Lspsaga close_floaterm<CR>]]):with_noremap():with_silent(),
    --["n|<Leader>g"]      = map_cu("Lspsaga open_floaterm lazygit"):with_noremap():with_silent(),
    ---- Far.vim
    --["n|<Leader>fz"]     = map_cr('Farf'):with_noremap():with_silent();
    --["v|<Leader>fz"]     = map_cr('Farf'):with_noremap():with_silent();
    ---- Plugin Telescope
    --["n|<Leader>bb"]     = map_cu('Telescope buffers'):with_noremap():with_silent(),
    --["n|<Leader>fa"]     = map_cu('DashboardFindWord'):with_noremap():with_silent(),
    --["n|<Leader>fb"]     = map_cu('Telescope file_browser'):with_noremap():with_silent(),
    --["n|<Leader>ff"]     = map_cu('DashboardFindFile'):with_noremap():with_silent(),
    --["n|<Leader>fg"]     = map_cu('Telescope git_files'):with_noremap():with_silent(),
    --["n|<Leader>fw"]     = map_cu('Telescope grep_string'):with_noremap():with_silent(),
    --["n|<Leader>fh"]     = map_cu('DashboardFindHistory'):with_noremap():with_silent(),
    --["n|<Leader>fl"]     = map_cu('Telescope loclist'):with_noremap():with_silent(),
    --["n|<Leader>fc"]     = map_cu('Telescope git_commits'):with_noremap():with_silent(),
    --["n|<Leader>ft"]     = map_cu('Telescope help_tags'):with_noremap():with_silent(),
    --["n|<Leader>fd"]     = map_cu('Telescope dotfiles path='..os.getenv("HOME")..'/.dotfiles'):with_noremap():with_silent(),
    --["n|<Leader>fs"]     = map_cu('Telescope gosource'):with_noremap():with_silent(),
    ---- Plugin acceleratedjk
    ["n|j"]              = map_cmd('v:lua.enhance_jk_move("j")'):with_silent():with_expr(),
    ["n|k"]              = map_cmd('v:lua.enhance_jk_move("k")'):with_silent():with_expr(),
    ---- Plugin vim-easymotion
    ["n|<space>j"]       = map_cmd("<Plug>(easymotion-j)"),
    ["n|<space>k"]       = map_cmd("<Plug>(easymotion-k)"),
    ["n|<space>l"]       = map_cmd("<Plug>(easymotion-linebackward)"),
    ["n|<space>h"]       = map_cmd("<Plug>(easymotion-linebackward)"),
    ---- Plugin coc.vim
    ["n|gd"]             = map_cmd("<Plug>(coc-definition)"):with_silent(),
    ["n|gy"]             = map_cmd("<Plug>(coc-type-definition)"):with_silent(),
    ["n|gi"]             = map_cmd("<Plug>(coc-implementation)"):with_silent(),
    ["n|gr"]             = map_cmd("<Plug>(coc-references)"):with_silent(),
    ---- Plugin coc.vim
    ["n|<m-e>"]          = map_cmd("<Plug>(choosewin)"),
    ---- Plugin Vista
    ["n|<Leader>v"]    = map_cr('Vista!!'):with_noremap():with_silent()
};

bind.nvim_load_mapping(plug_map)
