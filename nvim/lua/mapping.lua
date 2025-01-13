vim.g.mapleader = " "
local map = vim.keymap.set
-- map("n", "<leader>e", vim.cmd("NvimTreeToggle)
map("i", "<C-s>", "<cmd>w <cr>")
map("n", "<C-s>", "<cmd>w <cr>")
map('i', "C-BS>", "<C-w>")
map("n", "<leader>wq", "<cmd><cmd>wq! <cr>")
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
map("n", "<leader>q", ':q!<cr>')
map("n", ";", "<cmd>")
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" }) 
map("i", "<C-BS>", '<C-w>')
-- "Map for the Insert Mode e"

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
map("i", "<C-e>", "<End>", { desc = "move up" })
map("i", "<C-b>", "<Home>", { desc = "move up" })
-- Telescope
vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { desc = 'Telescope buffers' })

vim.keymap.set('n', '<leader>fo', "<cmd>Telescope oldfiles<cr>", { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>fv', "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = 'Telescope help tags' })
-- Formatting
map("n", "<M-f>", function()

		local efm = vim.lsp.get_clients({ name = "efm" })

		if vim.tbl_isempty(efm) then
			return
		end

		vim.lsp.buf.format({ name = "efm", async = true })

end)

-- Nvim-Tree
map("n", "<C-n>", "<cmd>NvimTreeToggle <cr>")
map("n", "<C-h>", "<cmd>NvimTreeFocus <cr>")
-- Normal Tree
map("n", "<leader>pf", "<cmd>Ex <cr>")


-- Window Management
map("n","<leader>sv", "<cmd>vsplit<cr>") -- Split Vertically
map("n","<leader>sh", "<cmd>split<cr>") -- Split Horizontally
map("n","<C-Up>",    "<cmd>resize +2<cr>")
map("n","<C-Down>",  "<cmd>resize -2<cr>")
map("n","<C-Left>",  "<cmd>vertical resize +2<cr>")
map("n","<C-Right>", "<cmd>vertical resize -2<cr>")

-- Show Full File-Path
-- map("<leader>pa", "ShowPath", "n") -- Show Full File Path

-- Indenting
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })

map("n", "<C-/>", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

		
-- Quit
--

map("n", "<M-q>", "<cmd>q<cr>")
map("n", "<leader>fq", "<cmd>q!<cr>")


-- buffur line;
map("n", "<leader>bq", "<cmd>bd<cr>")
map("n", "<leader>bf", "<cmd>bf<cr>")
map("n", "<leader>bl", "<cmd>bl<cr>")
map("n", "<leader>bw", "<cmd>bw<cr>")
map("n", "<leader>bm", "<cmd>bm<cr>")
map("n", "<leader>bl", "<cmd>bn<cr>")
map("n", "<leader>bh", "<cmd>bp<cr>")


---- move lines up and down even if they are mutliple line in normal mode--------
map("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
map("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
