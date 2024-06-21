-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("Hack Nerd Font", { weight = "Medium" })
config.font_size = 15
config.freetype_load_target = "Light"

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.color_scheme = "Catppuccin Mocha"

-- and finally, return the configuration to wezterm
return config
