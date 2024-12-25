-- Telescope Keymapping
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

--Keymapping for formatting from nvim formatter.


vim.keymap.set('n', '<C-f>', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })


--todo-comment-highligh-keymapping
--tada....."
vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords
vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING" } })
end, { desc = "Next error/warning todo comment" })


vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })

--Map Ctrl+h/j/k/l for motions in insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })
--
--HACK: Some custom keymapping for the comming back and going end of line


--
-- print("hello wrold")


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

