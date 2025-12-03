-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Telescope Keymapping
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

--Keymapping for formatting from nvim formatter.

vim.keymap.set("n", "<C-f>", ":lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })

-- for selecting all
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true, desc = "select all" })

--Map Ctrl+h/j/k/l for motions in insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })

--Keybindings save file using C-s in both inser and nomal mode
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true }) -- Normal mode
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true }) -- Insert mode

vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set("v", "<C-x>", '"+d', { noremap = true, silent = true })
vim.keymap.set({ "n", "v", "i" }, "<C-v>", '"+p', { noremap = true, silent = true })

-- Normal mode: Move current line down/up
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })

-- Insert mode: Move current line down/up
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down", silent = true })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up", silent = true })

-- Visual mode: Move selected lines down/up
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })

-- RELIABLE DUPLICATE AND MOVE KEYBINDINGS

-- More reliable duplicate functions
local function duplicate_line(direction)
	if direction == "down" then
		vim.cmd("normal! yyp")
	else
		vim.cmd("normal! yyP")
	end
	vim.cmd("normal! ==") -- Auto-indent the new line
end

local function duplicate_line_insert(direction)
	local pos = vim.api.nvim_win_get_cursor(0)
	if direction == "down" then
		vim.cmd("normal! yyp")
	else
		vim.cmd("normal! yyP")
	end
	vim.cmd("normal! ==")
	vim.api.nvim_win_set_cursor(0, { pos[1] + (direction == "down" and 1 or 0), pos[2] })
	vim.cmd("startinsert")
end

-- Normal mode
vim.keymap.set("n", "<C-A-j>", function()
	duplicate_line("down")
end, { desc = "Duplicate line down" })
vim.keymap.set("n", "<C-A-k>", function()
	duplicate_line("up")
end, { desc = "Duplicate line up" })

-- Insert mode
vim.keymap.set("i", "<C-A-j>", function()
	duplicate_line_insert("down")
end, { desc = "Duplicate line down" })
vim.keymap.set("i", "<C-A-k>", function()
	duplicate_line_insert("up")
end, { desc = "Duplicate line up" })

------
-- Alt+e → End of line
vim.keymap.set("n", "<M-e>", "$")
vim.keymap.set("i", "<M-e>", "<Esc>$a")

-- Alt+f → Start of line
vim.keymap.set("n", "<M-f>", "0")
vim.keymap.set("i", "<M-f>", "<Esc>i")
