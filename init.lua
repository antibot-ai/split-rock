--- Разбиение строки на массив

--- Разбивает строку по разделителю
--
-- @param str Строка для разбиения
-- @param sep Строка-разделитель
-- @return arr Массив подстрок
local function split(str, sep)
  local arr = {}

  for part in string.gmatch(str, '[^'..sep..']+') do
    if opts.trim then
      part = part:gsub('^%s+', ''):gsub('%s+$', '')
    end

    if opts.upper then
      part = string.upper(part)
    elseif opts.lower then
      part = string.lower(part)
    end

    table.insert(arr, part)
  end

  return arr
end

--- split
-- @table export
return split
