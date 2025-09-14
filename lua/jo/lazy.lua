local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("jo.plugins", {
  -- check if update are available for neovim plugins
  checker = {
    enabled = true,
    notify = false
  },
  -- avoid to notify when file content changed or file created
  change_detection = {
    notify = false,
  },
  -- disable luarocks/hererocks
  rocks = {
    enabled = false,
  },
})
