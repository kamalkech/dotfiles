local wezterm = require("wezterm")
return {
	-- color_scheme = 'termnial.sexy',
	color_scheme = "Catppuccin Mocha",
	enable_tab_bar = false,
	font_size = 18.0,

	-- font_family Monofur Nerd Font
	-- font_family MesloLGS Nerd Font Mono
	-- font_family FiraCode Nerd Font
	-- font_family Cascadia Code NF
	-- font_family Lilex Nerd Font
	-- font_family JetBrainsMono Nerd Font Propo
	-- font_family JetBrainsMono Nerd Font Mono
	-- font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true }),
	font = wezterm.font("Monofur Nerd Font", { weight = "Medium", italic = true }),
	-- font = wezterm.font("Monaspace Radon", { weight = "Medium", italic = true }),

	-- macos_window_background_blur = 40,
	macos_window_background_blur = 30,

	-- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
	-- window_background_image_hsb = {
	-- brightness = 0.01,
	-- hue = 1.0,
	-- saturation = 0.5,
	-- },
	-- window_background_opacity = 0.92,
	window_background_opacity = 1.0,
	-- window_background_opacity = 0.78,
	-- window_background_opacity = 0.20,
	window_decorations = "RESIZE",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
