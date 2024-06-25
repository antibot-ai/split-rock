# Разбиение строки на массив
Модуль разбивает строку на массив.

### Параметры
- **str** (строка) Строка для разбиения
- **sep** (строка [опционально]) Строка-разделитель
- **opts** (таблица [опционально]) Таблица опций
   - `trim` (boolean): Удаление пробелов по краям строки
   - `upper` (boolean): Перевод захваченной части в верхний регистр
   - `lower` (boolean): Перевод захваченной части в нижний регистр

# Установка
### tarantool
```bash
tt rocks install --only-server=https://rocks.antibot.ru split
```
### luarocks
```bash
luarocks install --server=https://rocks.antibot.ru split
```

# Использование
```lua
local split = require('split')

local arr = split('один два три')
print(arr[1]) -- один
print(arr[2]) -- два
print(arr[3]) -- три
```

# Генерация ldoc
```bash
ldoc -s '!new' -d ldoc lua
```

# Тестирование
```bash
luatest test/*
```
