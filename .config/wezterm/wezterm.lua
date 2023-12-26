local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}
if wezterm.config_builder then config = wezterm.config_builder() end

-- settings
-- config.color_scheme = "Catppuccin Mocha"
config.color_scheme = "Gruvbox"
config.hide_tab_bar_if_only_one_tab = true
config.inactive_pane_hsb = { saturation = 0.90, brightness = 0.5 }
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.font = wezterm.font_with_fallback {
  -- "Fira Code",
  -- "Melo"
}

config.window_background_opacity = 0.7
config.macos_window_background_blur = 15
config.font_size = 20.0

-- keybinds
config.leader = { key = "a", mods = "OPT", timeout_milliseconds = 1000 }
config.keys = {
  { key = "s", mods = "LEADER", action = act.SplitVertical { domain = "CurrentPaneDomain" } },
  { key = "v", mods = "LEADER", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },

  -- pane movement
  { key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
  { key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
  { key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
  { key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },
  -- pane resize
  { key = "H", mods = "LEADER", action = act.AdjustPaneSize({ "Left", 5 }) },
  { key = "J", mods = "LEADER", action = act.AdjustPaneSize({ "Down", 5 }) },
  { key = "K", mods = "LEADER", action = act.AdjustPaneSize({ "Up", 5 }) },
  { key = "L", mods = "LEADER", action = act.AdjustPaneSize({ "Right", 5 }) },

  { key = "q", mods = "LEADER", action = act.CloseCurrentPane { confirm = true } },
  { key = "z", mods = "LEADER", action = act.TogglePaneZoomState },
  { key = "o", mods = "LEADER", action = act.RotatePanes "Clockwise" },
  { key = "k", mods = "CMD", action = act.Multiple { act.ClearScrollback 'ScrollbackAndViewport' } },
}

-- keybinds
-- config.keys = {
--   { key = 'r', mods = 'CMD|SHIFT', action = wezterm.action.ReloadConfiguration },
-- }

return config
