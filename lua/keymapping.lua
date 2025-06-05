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
--


--Keymapping for snip run plugin
-- Execute current liniie
vim.keymap.set("n", "<leader>r", "<Plug>SnipRun", { desc = "Run current line" })

-- Execute a visual selection
vim.keymap.set("v", "<leader>r", "<Plug>SnipRun", { desc = "Run selection" })

-- Execute the whole file
vim.keymap.set("n", "<leader>rf", "ggVG<Plug>SnipRun", { desc = "Run file" })

-- Clear SnipRun output
vim.keymap.set('n', '<C-x>', '<cmd>SnipReset<CR>', { noremap = true, silent = true, desc = 'Clear Sniprun output' })
vim.keymap.set('n', '<C-l>', '<cmd>SnipClose<CR>', { noremap = true, silent = true, desc = 'Close Sniprun' })

vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })



-- Copy line down
vim.api.nvim_set_keymap("n", "<A-S-j>", "yyp", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-S-j>", "ygvP`>p", { noremap = true, silent = true })

-- Copy line up
vim.api.nvim_set_keymap("n", "<A-S-k>", "yyP", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-S-k>", "ygvP`<P", { noremap = true, silent = true })


--Keybindings save file using C-s in both inser and nomal mode 
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true }) -- Normal mode
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true }) -- Insert mode

vim.keymap.set('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.keymap.set('v', '<C-x>', '"+d', { noremap = true, silent = true })
vim.keymap.set({'n', 'v', 'i'}, '<C-v>', '"+p', { noremap = true, silent = true })






