--local wk = require("which-key")
-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true, buffer = bufnr }

---------------------
-- General Keymaps
---------------------

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split windows vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make split windows equal width & height" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "close current window" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights" } )

-- tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "close current tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "go to next tab" }) 
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "go to previous tab" })

-- file explorer (nvim-tree)
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "open/close file explorer" })
keymap.set("n", "<leader>ef", ":NvimTreeFindFileToggle<CR>", { desc = "open file explorer on current file" })
keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "Collapse folder/s of file selected" })
keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

-- fuzzy-finder (telescope)
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Fuzzy find files in current working directory" })
keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>", { desc = "Find string in current working directory" })

--toggle-term
keymap.set("t", "<esc>", [[<C-\><C-n>]], opts) --go from Terminal mode to normal mode
keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
keymap.set("t", "<leader>c", [[<C-\><C-n>:q!<CR>]], opts)
keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>") --open new floating terminal

--wk.register({
	--t = { ":ToggleTerm<CR>", "Open new terminal" },
--}, { prefix = "<leader>" })

-- nvim-tree
--wk.register({
	--e = { ":NvimTreeToggle<CR>", "FileExplorer" },
--}, { prefix = "<leader>" })

--See all diagnostics
--wk.register({
	--d = { ":Trouble<CR>", "See diagnostics" },
--}, { prefix = "<leader>" })

--Tabline Keymaps
--wk.register({
	--n = { ":TablineBufferNext<CR>", "NextBuffer" },
	--p = { ":TablineBufferPrevious<CR>", "PrevBuffer" },
--}, { prefix = "<leader>" })

--Close buffer
--wk.register({
	--c = { ":bd<CR>", "CloseBuffer" },
--}, { prefix = "<leader>" })

-- telescope
--wk.register({
	--f = { ":Telescope find_files<CR>", "Find File" }, -- find files within current working directory, respects .gitignore
	--s = { ":Telescope live_grep<CR>", "Find String" }, -- find string in current working directory as you type
	--b = { ":Telescope buffers<CR>", "List Open Buffers" }, -- list open buffers in current neovim instance
	--h = { ":Telescope help_tags<CR>", "Help Tags" }, -- list available help tags
--}, { prefix = "<leader>f" })

--list of colorscheme via telescope
--wk.register({
	--s = { ":Telescope colorscheme<CR>", "Colorscheme List" },
--}, { prefix = "<leader>c" })

--wk.register({
--	D = { ":lua vim.lsp.buf.declaration()<CR>", "Go To Declaration", opts }, -- got to declaration
--	d = { ":lua vim.lsp.buf.definition()<CR>", "Go To Definition", opts }, -- got to definition
--}, { prefix = "g" })
