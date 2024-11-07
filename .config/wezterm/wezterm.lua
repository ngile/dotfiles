local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.font = wezterm.font("Cousine Nerd Font")
config.font_size = 12

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
-- config.color_scheme_dirs = { "./colors/melange_dark.toml" }
config.color_scheme = "melange_dark"
config.window_background_opacity = 0.8

return config
