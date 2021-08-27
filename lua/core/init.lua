local global = require 'core.global'
local vim = vim

-- Create cache dir and subs dir
local createdir = function ()
  local data_dir = {
    global.cache_dir..'backup',
    global.cache_dir..'session',
    global.cache_dir..'swap',
    global.cache_dir..'tags',
    global.cache_dir..'undo'
  }
  -- There only check once that If cache_dir exists
  -- Then I don't want to check subs dir exists
  if vim.fn.isdirectory(global.cache_dir) == 0 then
    os.execute("mkdir -p " .. global.cache_dir)
    for _,v in pairs(data_dir) do
      if vim.fn.isdirectory(v) == 0 then
        os.execute("mkdir -p " .. v)
      end
    end
  end
end

local load_core =function()
  local pack = require('core.pack')
  createdir() -- 创建各缓存文件夹和子文件夹

  pack.ensure_plugins() -- 加载插件
  require('core.options') -- 设置各选项
  require('core.mapping') -- 设置默认键位绑定
  require('keymap') -- 设置键位绑定
  require('core.event') -- 绑定时间处理钩子
  pack.load_compile()
end

load_core()
