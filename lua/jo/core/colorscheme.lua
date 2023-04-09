-- set colorscheme to tokyonight with protected call
local tokyo_status, tokyonight = pcall(require, "tokyonight")
if not tokyo_status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

tokyonight.setup({
	style = "moon", -- 'storm', 'night', 'moon' and 'day'
})

vim.cmd([[colorscheme tokyonight]])
