-- Подключаем библиотеку Rayfield
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/Heise-RBLX/Rayfield/main/source.lua"))()

-- Создаем окно с названием
local Window = Rayfield:CreateWindow({
    Name = "MVP Hub", -- Название окна
    LoadingTitle = "Загрузка", -- Заголовок при загрузке
    LoadingSubtitle = "Загрузка меню...", -- Подзаголовок при загрузке
    ConfigurationSaving = {
        Enabled = true, -- Включаем сохранение настроек
        FolderName = nil, -- Можно указать имя папки для сохранения настроек
        FileName = "MVPHubSettings" -- Название файла с настройками
    },
    Discord = {
        Enabled = false, -- Включить или выключить Discord
        Invite = "https://discord.gg/xxxxxx", -- Ссылка на Discord
        RememberJoins = false -- Запоминать ли входы
    },
    KeySystem = false, -- Использование системы ключей
    Key = "mvpkey" -- Ваш ключ
})

-- Создание вкладки
local Tab = Window:CreateTab("Основное", 4483362458) -- Имя вкладки

-- Кнопка для включения автофарама
Tab:CreateButton({
    Name = "Авто Фарм Левел", -- Название кнопки
    Callback = function()
        print("Авто фарм левел включен!")
        -- Здесь ваш код для автофарма уровня
    end
})

-- Кнопка для включения автофарма босса
Tab:CreateButton({
    Name = "Авто Фарм Босса", -- Название кнопки
    Callback = function()
        print("Авто фарм босса включен!")
        -- Ваш код для автофарма босса
    end
})

-- Создание переключателя (Toggle) для включения/выключения автофарма
Tab:CreateToggle({
    Name = "Авто Фарм", -- Название переключателя
    CurrentValue = false, -- Стартовое значение
    Callback = function(value)
        if value then
            print("Авто фарм включен!")
            -- Здесь код включения автофарма
        else
            print("Авто фарм выключен!")
            -- Здесь код выключения автофарма
        end
    end
})

-- Ползунок для настройки скорости фарма
Tab:CreateSlider({
    Name = "Скорость Фарма", -- Название ползунка
    Range = {1, 100}, -- Диапазон значений
    Increment = 1, -- Шаг
    CurrentValue = 50, -- Начальное значение
    Callback = function(value)
        print("Скорость фарма: " .. value)
        -- Используйте значение для изменения скорости фарма
    end
})

-- Окно с текстом или информацией
Tab:CreateLabel("Информация о скрипте: MVP Hub") -- Можете добавить любую информацию

-- Завершаем создание интерфейса
Rayfield:LoadConfiguration()
