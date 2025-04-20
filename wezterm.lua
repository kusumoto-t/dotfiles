local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
local config = {}

config.color_scheme = 'Neutron'
-- 背景透過
config.window_background_opacity = 0.85

-- 起動時にフルスクリーン
wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

config.keys = {
  {
    key = 'd',
    mods = 'CMD',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = act.CloseCurrentPane { confirm = true },
  },
  {
    key = '[',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = ']',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = '[',
    mods = 'CMD|SHIFT',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = ']',
    mods = 'CMD|SHIFT',
    action = act.ActivatePaneDirection 'Down',
  },
  {
    key = 'f',
    mods = 'CMD|SHIFT',
    action = act.ToggleFullScreen,
  },
}


return config
