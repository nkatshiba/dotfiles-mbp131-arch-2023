local wezterm = require("wezterm")
local act = wezterm.action

return {

	-- Wayland
	enable_wayland = true, -- default: true

	-- font = wezterm.font("IosevkaTerm Nerd Font", { weight = "Bold" }),
	-- font = wezterm.font("Iosevka Nerd Font Mono", { weight = "Bold" }),
	font = wezterm.font("CaskaydiaCove Nerd Font Mono", { weight = "Bold" }),

	-- font_size = 10.75,
	font_size = 10.0,
	-- Appearance
	color_scheme = "astromouse (terminal.sexy)",
	enable_tab_bar = false,
	enable_scroll_bar = false,
	warn_about_missing_glyphs = false,
	-- Window layout
	window_padding = {
		left = "1cell",
		right = "1cell",
		top = "1cell",
		bottom = "0.5cell",
	},
	-- Keyboard shortcuts
	disable_default_key_bindings = true,
	keys = {
		{ key = "V", mods = "CTRL", action = act.PasteFrom("Clipboard") },
		{ key = "p", mods = "CTRL", action = act.PasteFrom("Clipboard") },
		{ key = "R", mods = "CTRL", action = act.ReloadConfiguration },
		-- { key = "y", mods = "CTRL", action = act.CopyTo("ClipboardAndPrimarySelection") },
		-- { key = "y", mods = "CTRL", action = act.CopyTo("ClipboardAndPrimarySelection") },
		{ key = "f", mods = "CTRL", action = act.Search("CurrentSelectionOrEmptyString") },
		{ key = "/", mods = "SHIFT|CTRL", action = act.Search("CurrentSelectionOrEmptyString") },
		{ key = "+", mods = "CTRL", action = act.IncreaseFontSize },
		{ key = "-", mods = "CTRL", action = act.DecreaseFontSize },
		{ key = "0", mods = "CTRL", action = act.ResetFontSize },
		{ key = "phys:Space", mods = "CTRL", action = act.ActivateCopyMode },
		{ key = "Ä", mods = "SHIFT", action = act.ActivateCopyMode },
		{ key = "phys:Space", mods = "SHIFT|CTRL", action = act.QuickSelect },
		{ key = "j", mods = "CTRL", action = act.ActivatePaneDirection("Prev") },
		{ key = "k", mods = "CTRL", action = act.ActivatePaneDirection("Next") },
		-- CTRL-SHIFT-l activates the debug overlay
		{ key = "L", mods = "CTRL", action = wezterm.action.ShowDebugOverlay },
		{ key = "Y", mods = "CTRL", action = act.CopyTo("ClipboardAndPrimarySelection") },
	},
	key_tables = {
		search_mode = {
			{ key = "Enter", mods = "NONE", action = act.CopyMode("NextMatch") },
			{ key = "Escape", mods = "NONE", action = act.CopyMode("Close") },
			{ key = "N", mods = "CTRL", action = act.CopyMode("PriorMatch") },
			{ key = "n", mods = "CTRL", action = act.CopyMode("NextMatch") },
			-- { key = "p", mods = "CTRL", action = act.CopyMode("PriorMatch") },
			{ key = "r", mods = "CTRL", action = act.CopyMode("CycleMatchType") },
			{ key = "u", mods = "CTRL", action = act.CopyMode("ClearPattern") },
		},

		copy_mode = {
			{ key = "o", mods = "NONE", action = act.CopyMode("MoveToStartOfNextLine") },
			{ key = "Escape", mods = "NONE", action = act.CopyMode("Close") },
			{ key = "v", mods = "NONE", action = act.CopyMode({ SetSelectionMode = "Cell" }) },
			{ key = "v", mods = "CTRL", action = act.CopyMode({ SetSelectionMode = "Block" }) },
			{ key = "V", mods = "NONE", action = act.CopyMode({ SetSelectionMode = "Line" }) },
			{ key = "$", mods = "NONE", action = act.CopyMode("MoveToEndOfLineContent") },
			{ key = "0", mods = "NONE", action = act.CopyMode("MoveToStartOfLine") },
			{ key = "G", mods = "NONE", action = act.CopyMode("MoveToScrollbackBottom") },
			{ key = "h", mods = "NONE", action = act.CopyMode("MoveLeft") },
			{ key = "j", mods = "NONE", action = act.CopyMode("MoveDown") },
			{ key = "k", mods = "NONE", action = act.CopyMode("MoveUp") },
			{ key = "l", mods = "NONE", action = act.CopyMode("MoveRight") },
			{ key = "w", mods = "NONE", action = act.CopyMode("MoveForwardWord") },
			{ key = "LeftArrow", mods = "NONE", action = act.CopyMode("MoveLeft") },
			{ key = "RightArrow", mods = "NONE", action = act.CopyMode("MoveRight") },
			{ key = "UpArrow", mods = "NONE", action = act.CopyMode("MoveUp") },
			{ key = "DownArrow", mods = "NONE", action = act.CopyMode("MoveDown") },
			{ key = "_", mods = "SHIFT", action = act.CopyMode("MoveToEndOfLineContent") },
			{ key = "u", mods = "CTRL", action = act.CopyMode("ClearPattern") },
			{ key = ",", mods = "NONE", action = act.CopyMode({ JumpBackward = { prev_char = false } }) },
			{ key = ";", mods = "SHIFT", action = act.CopyMode({ JumpForward = { prev_char = true } }) },
			{ key = "V", mods = "SHIFT", action = act.CopyMode({ SetSelectionMode = "Line" }) },
			{ key = "O", mods = "NONE", action = act.CopyMode("MoveToSelectionOtherEndHoriz") },
			-- { key = 'b', mods = 'NONE', action = act.CopyMode 'MoveBackwardWord' },
			{ key = ".", mods = "NONE", action = act.CopyMode("MoveToViewportMiddle") },
			-- { key = "y", mods = "NONE", action = act.CopyTo("ClipboardAndPrimarySelection") },
			-- { key = "Y", mods = "NONE", action = act.CopyTo("PrimarySelection") },

			-- { key = ';', mods = 'NONE', action = act.CopyMode 'JumpAgain' },
			-- { key = '^', mods = 'NONE', action = act.CopyMode 'MoveToStartOfLineContent' },
			-- { key = '^', mods = 'SHIFT', action = act.CopyMode 'MoveToStartOfLineContent' },
			-- {
			-- 	key = "y",
			-- 	mods = "NONE",
			-- 	action = act.Multiple({
			-- 		{ CopyTo = "ClipboardAndPrimarySelection" },
			-- 		{ CopyMode = "Close" },
			-- 	}),
			-- },
		},
	},
}
