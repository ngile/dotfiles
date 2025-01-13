local wezterm = require("wezterm")
local config = wezterm.config_builder()
config = {
	font = wezterm.font("Monaspace Neon"),
	font_size = 11,
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	color_scheme = "melange_dark",
	-- color_scheme = "melange_light",
	window_background_opacity = 0.9,
	max_fps = 120,
	term = "xterm-256color",
	default_cursor_style = "SteadyBlock",
	cursor_blink_ease_in = "Constant",
	webgpu_preferred_adapter = wezterm.gui.enumerate_gpus()[1],
	front_end = "WebGpu",
	cursor_blink_rate = 0,
	quick_select_patterns = {
		"(/[0-9A-Za-z.+_/-]+)",

		-- match docker images + versions
		"([1-9A-Za-z]+:[0-9]{1,}.[0-9]{1,}.[0-9]{1,})",
		"([1-9A-Za-z]+:[0-9]{1,}.[0-9]{1,})",

		-- match branch names in ()
		"\\(([0-9A-Za-z_+-]+)\\)",
	},
	window_padding = {
		left = 2,
		right = 2,
		top = 15,
		bottom = 0,
	},
	keys = {
		{ key = "L", mods = "CTRL", action = wezterm.action.ShowDebugOverlay },
	},
}

return config
