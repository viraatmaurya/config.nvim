-- TODO: Tesing todo plugin....

vim.o.mouse = "a"
require("config.lazy")
require("keymapping")
require("settings")


local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup({
  capabilities = capabilities,
})



vim.opt.clipboard = "unnamed"
vim.opt.clipboard = "unnamedplus"
vim.api.nvim_set_keymap("n", "dd", '"_dd', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true })
