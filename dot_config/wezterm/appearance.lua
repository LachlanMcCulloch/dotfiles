local wezterm = require 'wezterm'
local gui = wezterm.gui

local module = {}

function module.is_dark()
	if wezterm.gui then
		return gui.get_appearance():find("Dark")
	end
	return true
end

return module
