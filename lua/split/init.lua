--- Разбиение строки на массив
-- @module split
local split

--- Разбивает строку по разделителю
--
-- @param str (string) Строка для разбиения
-- @param[opt] sep (string) Строка-разделитель
-- @param[optchain] opts (table) Таблица опций
-- @param opts.trim (boolean): Удаление пробелов по краям строки
-- @param opts.upper (boolean): Перевод захваченной части в верхний регистр
-- @param opts.lower (boolean): Перевод захваченной части в нижний регистр
-- @return arr Массив подстрок
-- @usage
  -- local arr = split('один два три')
  -- print(arr[1]) -- один
  -- print(arr[2]) -- два
  -- print(arr[3]) -- три
function split(str, sep, opts)
  sep = sep or ' '
  opts = opts or {}

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

return split
