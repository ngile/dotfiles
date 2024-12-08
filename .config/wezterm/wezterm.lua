local wezterm = require("wezterm")
local config = wezterm.config_builder()
config = {
	font = wezterm.font("Cousine Nerd Font"),
	font_size = 12,
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	color_scheme = "melange_dark",
	window_background_opacity = 0.9,
	max_fps = 120,
	default_cursor_style = "SteadyBlock",
	cursor_blink_ease_in = "Constant",
	-- Setting this to 0 disables blinking
	-- window_padding = { left = 3, right = 3, top = 3, bottom = 3 },
	cursor_blink_rate = 0,
	window_padding = {
		left = 2,
		right = 2,
		top = 15,
		bottom = 0,
	},
}

return config
