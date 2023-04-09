-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- configure lualine with modified theme
lualine.setup({
	options = {
		icons_enabled = true,
		theme = "tokyonight",
		-- component_separators = { left = "", right = "" },
		-- section_separators = { left = "", right = "" },
		component_separators = { left = " ", right = " " },
		section_separators = { left = " ", right = " " },

		disabled_filetypes = {
			statusline = { "dashboard", "NvimTree" },
			winbar = { "dashboard", "NvimTree" },
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
})
