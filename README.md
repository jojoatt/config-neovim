# Neovim Configuration

### Pre-requisites

- [WezTerm](https://wezterm.org/installation.html) - Modern True Color Terminal
- [Git](https://git-scm.com/downloads)
- [Neovim](https://neovim.io)
- [Nerd Font](https://www.nerdfonts.com/) - I use `Meslo Nerd Font`
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - Required by Telescope for fast searching

### Installation

Clone this repository into your Neovim configuration folder:
```bash
git clone https://github.com/jojoatt/config-neovim.git <HOME_USER>/.config/nvim
```
Replace <HOME_USER> with the appropriate value

### Plugins
#### Plugin Manager
This setup uses `lazy.nvim` as the plugin manager.
To open its powerful UI inside Neovim, type:
```vim
:Lazy
```

#### Installed plugins
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) - Lazy.nvim a modern plugin manager for Neovim
- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Lua utility functions used by many plugins
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - To navigate between nvim windows with `<CTRL><h,j,k,l>`
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - Tokyo Night Colorscheme
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) - File Explorer
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - VS Code-Like Icons
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Improved statusline (bottom bar)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - Tabline for better buffer navigation (top bar)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim) - Shows available keybindings as you type (`<SPACE>` to trigger)
 - [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Telescope performance boost
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder (files, buffers, etc.)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion engine
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - Completion source for text in current buffer
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) - Completion source for file system paths
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim) - Vs Code Like-Icons for completion
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Predefined snippets for many languages
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - Completion source for LuaSnop
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - Easy commenting with `<gc>`
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) - Context-aware commenting (requires Treesitter
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Treesitter for better syntax highlighting and parsing
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autoclose brackets, parens, quotes, etc...
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Autoclose tags
- [folke/snacks.nvim](https://github.com/folke/snacks.nvim) - Collection of small plugins (only using `input` here for better UI prompts when create/rename/delete files)
- [MeanderingProgrammer/render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) - Render Markdown directly inside Neovim

### Keybindings
- All keybindings are defined in:
`lua/jo/core/keymaps.lua`

- The leader key is set to `<SPACE>`

- With `which-key.nvim` plugin, pressing `<SPACE>` shows all available shortcuts


### Plugin Manager Configuration
`lazy.nvim` plugin is configured in:
`lua/jo/lazy.lua` -> inside the `require(...).setup` section

### Health Check
To verify your Neovim setup and plugins, run:
```vim
:checkhealth
```
This will display a report for Neovim and each plugin.
