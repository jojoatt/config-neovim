-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine nightfly theme
local lualine_horizon = require("lualine.themes.horizon")

-- new colors for theme
local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}

-- change horizon theme colors
lualine_horizon.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, -- black
	},
}
lualine_horizon.insert = {
	a = {
		gui = "bold",
		bg = new_colors.blue,
		fg = new_colors.black, -- black
	},
}

lualine_horizon.visual = {
	a = {
		gui = "bold",
		bg = new_colors.green,
		fg = new_colors.black, -- black
	},
}

-- configure lualine with modified theme
lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
		--theme = lualine_horizon,
	},
	--tabline = {
	--	lualine_a = { "buffers" },
	--	lualine_b = {},
	--	lualine_c = {},
	--	lualine_x = {},
	--	lualine_y = {},
	--	lualine_z = {},
	--},
})
