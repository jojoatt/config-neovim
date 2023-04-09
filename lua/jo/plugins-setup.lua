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

-- add list of plugins to install
require("lazy").setup({

	-- Colorscheme
	"bluz71/vim-nightfly-guicolors",
	"folke/tokyonight.nvim",
	"EdenEast/nightfox.nvim",
	"Mofiqul/dracula.nvim",
	"olimorris/onedarkpro.nvim",
	"kyazdani42/nvim-palenight.lua",
	"rose-pine/neovim",
	"JoosepAlviste/palenightfall.nvim",

	"nvim-lua/plenary.nvim", -- lua functions that many plugins
	"christoomey/vim-tmux-navigator", -- tmux & split window navigation
	{

		"iamcco/markdown-preview.nvim",
		config = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	-- toggle terminal
	"akinsho/toggleterm.nvim",

	-- file explorer
	"nvim-tree/nvim-tree.lua",

	-- vs-code like icons
	{
		"kyazdani42/nvim-web-devicons",
		config = function()
			local signs = { Error = "", Warn = "", Hint = "", Info = "" }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
			end
		end,
	},
	"folke/trouble.nvim",

	--comments plugin
	"terrortylor/nvim-comment",

	-- statusline
	"nvim-lualine/lualine.nvim",

	--top bar neovim
	"kdheepak/tabline.nvim",

	--which key
	"folke/which-key.nvim",
	-- autocompletion
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths

	-- fuzzy finding w/ telescope
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- dependency for better sorting performance
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" }, -- fuzzy finder
	-- snippets
	"L3MON4D3/LuaSnip", -- snippet engine
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	"rafamadriz/friendly-snippets", -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	"neovim/nvim-lspconfig", -- easily configure language servers
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion

	"jose-elias-alvarez/typescript.nvim", -- additional functionality for typescript server (e.g. rename file & update imports)
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

	-- formatting & linting
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls

	"ray-x/lsp_signature.nvim",
	-- auto closing
	"windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...
	-- treesitter configuration
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},
})
