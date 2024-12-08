--[[
    Название: MVP Hub
    Описание: Простой интерфейс с авто-фармом для Blox Fruits
    Автор: Ваше имя
    Версия: 1.0
]]

-- Секретные настройки, которые могут быть полезны для пользователя
local settings = {
    autoFarmEnabled = true,
    levelTarget = 100,
    farmSpeed = 1
}

-- Функция для отображения окна с меню
local function createMenu()
    local ScreenGui = Instance.new("ScreenGui")
    local frame = Instance.new("Frame")
    
    -- Настройка внешнего вида окна
    ScreenGui.Name = "MVP Hub"
    ScreenGui.Parent = game.CoreGui

    frame.Name = "MainFrame"
    frame.Size = UDim2.new(0, 300, 0, 400)
    frame.Position = UDim2.new(0.5, -150, 0.5, -200)
    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    frame.BorderSizePixel = 0
    frame.Parent = ScreenGui
    
    -- Настроим кнопку для включения/выключения авто-фарма
    local farmButton = Instance.new("TextButton")
    farmButton.Size = UDim2.new(0, 260, 0, 50)
    farmButton.Position = UDim2.new(0, 20, 0, 20)
    farmButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    farmButton.Text = "Включить авто-фарм"
    farmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    farmButton.Parent = frame

    -- Функция для переключения авто-фарма
    farmButton.MouseButton1Click:Connect(function()
        settings.autoFarmEnabled = not settings.autoFarmEnabled
        if settings.autoFarmEnabled then
            farmButton.Text = "Отключить авто-фарм"
            -- Запуск авто-фарма
            startAutoFarm()
        else
            farmButton.Text = "Включить авто-фарм"
            -- Остановка авто-фарма
            stopAutoFarm()
        end
    end)
end

-- Функция для старта авто-фарма
local function startAutoFarm()
    print("Авто-фарм активирован!")
    -- Логика авто-фарма: можно добавить действия, чтобы фармить
end

-- Функция для остановки авто-фарма
local function stopAutoFarm()
    print("Авто-фарм отключен.")
    -- Логика остановки фарма
end

-- Инициализация
createMenu()

-- Дополнительная настройка и использование
print("Добро пожаловать в MVP Hub!")
