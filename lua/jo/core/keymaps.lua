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
