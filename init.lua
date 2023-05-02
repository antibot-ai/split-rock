--- Разбиение строки на массив

--- Разбивает строку по разделителю
--
-- @param str Строка для разбиения
-- @param sep Строка-разделитель
-- @return arr Массив подстрок
local function split(str, sep)
  local arr = {}

  for part in string.gmatch(str, '[^'..sep..']+') do
    table.insert(arr, part)
  end

  return arr
end

--- split
-- @table export
return split
