local appearance = require 'appearance'
local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.set_environment_variables = {
  PATH = '/opt/homebrew/bin:' .. os.getenv('PATH')
}

if appearance.is_dark() then
  config.color_scheme = 'Tokyo Night'
  config.colors = {
    background = "#000000",
    tab_bar = {
      background = "#000000",
    }
  }
else
  config.color_scheme = 'Tokyo Night Day'
end

config.color_scheme = 'Tokyo Night'
config.font_size = 16
config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.window_frame = {
  font = wezterm.font({ family = 'Berkeley Mono', weight = 'Bold' }),
  font_size = 16,
}

-- wezterm.on('update-status', function(window)
--  local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
--  local color_scheme = window:effective_config().resolved_palette
--  local bg = color_scheme.background
--  local fg = color_scheme.foreground
--
--  window:set_right_status(wezterm.format({
--    -- First, we draw the arrow...
--    { Background = { Color = 'none' } },
--    { Foreground = { Color = bg } },
--    { Text = SOLID_LEFT_ARROW },
--    -- Then we draw our text
--    { Background = { Color = bg } },
--    { Foreground = { Color = fg } },
--    { Text = ' ' .. wezterm.hostname() .. ' ' },
--  }))
-- end)

config.keys = {
  {
    key = 'r',
    mods = 'CMD | SHIFT',
    action = wezterm.action.ReloadConfiguration,
  },
  {
    key = 'LeftArrow',
    mods = 'OPT',
    action = wezterm.action.SendString '\x1bb',
  },
  {
    key = 'RightArrow',
    mods = 'OPT',
    action = wezterm.action.SendString '\x1bf',
  },
  {
    key = ',',
    mods = 'SUPER',
    action = wezterm.action.SpawnCommandInNewTab {
      cwd = wezterm.home_dir,
      args = { 'nvim', wezterm.config_file },
    },
  },
  {
    -- Open nvim config with mini.files overlay
    key = '<',
    mods = 'SHIFT | SUPER',
    action = wezterm.action.SpawnCommandInNewTab {
      cwd = wezterm.home_dir,
      args = { 'nvim', wezterm.home_dir .. '/.config/nvim/init.lua', '-c', 'lua MiniFiles.open()' },
    },
  },
  -- Clears only the scrollback and leaves the viewport intact.
  -- You won't see a difference in what is on screen, you just won't
  -- be able to scroll back until you've output more stuff on screen.
  -- This is the default behavior.
  {
    key = 'k',
    mods = 'CMD',
    action = act.ClearScrollback 'ScrollbackOnly',
  },
  -- Clears the scrollback and viewport leaving the prompt line the new first line.
  {
    key = 'k',
    mods = 'CMD',
    action = act.ClearScrollback 'ScrollbackAndViewport',
  },
}

return config
