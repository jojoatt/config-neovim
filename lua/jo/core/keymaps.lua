local wk = require("which-key")
-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true, buffer = bufnr }

---------------------
-- General Keymaps
---------------------

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- nvim-tree
wk.register({
	e = { ":NvimTreeToggle<CR>", "FileExplorer" },
}, { prefix = "<leader>" })

--Tabline Keymaps
wk.register({
	n = { ":TablineBufferNext<CR>", "NextBuffer" },
	p = { ":TablineBufferPrevious<CR>", "PrevBuffer" },
}, { prefix = "<leader>" })

--Close buffer
wk.register({
	c = { ":bd<CR>", "CloseBuffer" },
}, { prefix = "<leader>" })

-- telescope
wk.register({
	f = { ":Telescope find_files<CR>", "Find File" }, -- find files within current working directory, respects .gitignore
	s = { ":Telescope live_grep<CR>", "Find String" }, -- find string in current working directory as you type
	b = { ":Telescope buffers<CR>", "List Open Buffers" }, -- list open buffers in current neovim instance
	h = { ":Telescope help_tags<CR>", "Help Tags" }, -- list available help tags
}, { prefix = "<leader>f" })

--list of colorscheme via telescope
wk.register({
	s = { ":Telescope colorscheme<CR>", "Colorscheme List" },
}, { prefix = "<leader>c" })

--Lspsaga
wk.register({
	o = { ":Lspsaga outline<CR>", "Outline", opts }, -- see outline on right hand side
	p = { ":Lspsaga diagnostic_jump_prev<CR>", "Prev Diagnostic", opts }, -- jump to previous diagnostic in buffer
	n = { ":Lspsaga diagnostic_jump_next<CR>", "Next Diagnostic", opts }, -- jump to next diagnostic in buffer
	d = { ":Lspsaga show_line_diagnostics<CR>", "Diagnostics", opts }, -- show  diagnostics for line
	a = { ":Lspsaga code_action<CR>", "Suggestion Code", opts }, -- see available code actions
}, { prefix = "<leader>l" })

wk.register({
	f = { ":Lspsaga lsp_finder<CR>", "List Defs_Refs", opts }, -- show definition, references
	D = { ":lua vim.lsp.buf.declaration()<CR>", "Go To Declaration", opts }, -- got to declaration
	d = { ":Lspsaga peek_definition<CR>", "See Declaration&Edit", opts }, -- see definition and make edits in window"
}, { prefix = "g" })

wk.register({
	r = { ":Lspsaga rename<CR>", "Rename", opts }, --smart rename
	K = { ":Lspsaga hover_doc<CR>", "Signature help", opts }, -- show documentation for what is under cursor
}, { prefix = "<leader>" })
