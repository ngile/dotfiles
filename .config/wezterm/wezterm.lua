local wezterm = require("wezterm")
local config = wezterm.config_builder()
config = {
	font = wezterm.font("Cousine Nerd Font"),
	font_size = 12,
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	color_scheme = "melange_dark",
	window_background_opacity = 0.9,
}

return config
