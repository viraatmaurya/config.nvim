-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`


vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })















-- Telescope Keymapping
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

--Keymapping for formatting from nvim formatter.


vim.keymap.set('n', '<C-f>', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })


-- for selecting all
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true, desc ='select all' })

--Map Ctrl+h/j/k/l for motions in insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })



--Keybindings save file using C-s in both inser and nomal mode 
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true }) -- Normal mode
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true }) -- Insert mode

vim.keymap.set('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.keymap.set('v', '<C-x>', '"+d', { noremap = true, silent = true })
vim.keymap.set({'n', 'v', 'i'}, '<C-v>', '"+p', { noremap = true, silent = true })






