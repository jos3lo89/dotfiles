local wezterm = require("wezterm")

if wezterm.config_builder then
	Config = wezterm.config_builder()
end


-- function scheme_for_appearance(appearance)
--   if appearance:find "Dark" then
--     return "Catppuccin Mocha"
--   else
--     return "Catppuccin Latte"
--   end
-- end

-- local theme_name = "rose-pine-moon"
-- local theme = require("themes." .. theme_name)

Config = {
  -- color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
	-- default_cursor_style = "SteadyBar",
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	check_for_updates = false,
--	window_decorations = "RESIZE",
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = false,
	font_size = 11.0,
	-- font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" }),
	font = wezterm.font("JetBrainsMono Nerd Font"),
	-- font = wezterm.font("Iosevka Nerd Font"),
	enable_tab_bar = false,
	-- window_padding = {
	-- 	top = 0,
	-- 	right = 2,
	-- 	left = 2,
	-- 	bottom = 0,
	-- },
	-- background = {
	-- 	{
	-- 		source = {
	-- 			File = "C:/Users/haru/Pictures/wall/wall-1.png",
	-- 		},
	-- 		hsb = {
	-- 			hue = 1.0,
	-- 			saturation = 1.0,
	-- 			brightness = 0.3,
	-- 		},
	-- 		width = "100%",
	-- 		height = "100%",
	-- 	},
	-- 	-- {
	-- 	--   source = {
	-- 	--     Color = "#282c35",
	-- 	--   },
	-- 	--   -- Color de fondo secundario debajo de la imagen (útil si la imagen es translúcida)
	-- 	--
	-- 	--   width = "100%",
	-- 	--   height = "100%",
	-- 	--   opacity = 0.55,
	-- 	--   -- Hace el fondo oscuro semi-transparente para que se vea la imagen
	-- 	-- },
	-- },
	max_fps = 240,
	enable_kitty_graphics = true,
	-- default_domain = "WSL:Debian",
	hyperlink_rules = {
		{
			regex = "\\((\\w+://\\S+)\\)",
			format = "$1",
			highlight = 1,
		},
		{
			regex = "\\[(\\w+://\\S+)\\]",
			format = "$1",
			highlight = 1,
		},
		{
			regex = "\\{(\\w+://\\S+)\\}",
			format = "$1",
			highlight = 1,
		},
		{
			regex = "<(\\w+://\\S+)>",
			format = "$1",
			highlight = 1,
		},
		{
			regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)",
			format = "$1",
			highlight = 1,
		},
		{
			regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
			format = "mailto:$0",
		},
	},

	-- Tema Rose Pine Moon - COLORES EXACTOS DE GOGH
	-- colors = theme,
   force_reverse_video_cursor = true,
    colors = {
        foreground = "#C5C9C7",
        background = "#090E13",

        cursor_bg = "#090E13",
        cursor_fg = "#C5C9C7",
        cursor_border = "#C5C9C7",

        selection_fg = "#C5C9C7",
        selection_bg = "#22262D",

        scrollbar_thumb = "#22262D",
        split = "#22262D",

        ansi = {
            "#090E13",
            "#C4746E",
            "#8A9A7B",
            "#C4B28A",
            "#8BA4B0",
            "#A292A3",
            "#8EA4A2",
            "#A4A7A4",
        },
        brights = {
            "#A4A7A4",
            "#E46876",
            "#87A987",
            "#E6C384",
            "#7FB4CA",
            "#938AA9",
            "#7AA89F",
            "#C5C9C7",
        },
    },
}
return Config
