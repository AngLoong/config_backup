-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- 从此开始配置

-- 字体
-- Choose your favourite font, make sure it's installed on your machine
config.font = wezterm.font({ family = 'JetBrains Mono Medium' })

-- And a font size that won't have you squinting
config.font_size = 22

-- 外观
-- For example, changing the color scheme: 主题
config.color_scheme = 'Tokyo Night'

-- Slightly transparent and blurred background
config.window_background_opacity = 0.8  -- 不透明度
config.macos_window_background_blur = 30  -- 模糊


-- 结束配置
-- and finally, return the configuration to wezterm
return config
