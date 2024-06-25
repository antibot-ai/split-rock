-- test/split-test.lua
local luatest = require('luatest')
local g = luatest.group('translit')

-- Функция разбиения строки на массив
local split = require('lua.split.init')

-- Тесты
g.test_split = function()
  local arr = split('один два три')
  luatest.assert_equals(arr[1], 'один')
  luatest.assert_equals(arr[2], 'два')
  luatest.assert_equals(arr[3], 'три')
end

g.test_split_opts = function()
  local arr = split(' ONE ,TWO , THREE ', ',', {
    trim = true,
    lower = true
  })
  luatest.assert_equals(arr[1], 'one')
  luatest.assert_equals(arr[2], 'two')
  luatest.assert_equals(arr[3], 'three')
end
