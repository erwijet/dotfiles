local wt = require "wezterm"
local conf = wt.config_builder()

conf.color_scheme = "Catppuccin Macchiato"
conf.font = wt.font("MesloLGS Nerd Font Mono")
conf.font_size = 16

conf.enable_tab_bar = true
conf.use_fancy_tab_bar = false
conf.window_decorations = "RESIZE | MACOS_FORCE_ENABLE_SHADOW | INTEGRATED_BUTTONS"
conf.window_padding = {
    top = 16
}


conf.window_background_opacity = 0.95
conf.macos_window_background_blur = 10

return conf
