-- Mason and LSP configuration

-- Setup function for keybindings when LSP attaches to a buffer
local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, noremap = true, silent = true }

    -- Keybindings for LSP features
    local keymap = vim.keymap.set
    keymap("n", "gd", vim.lsp.buf.definition, opts)                                  -- Go to definition
    keymap("n", "gr", vim.lsp.buf.references, opts)                                  -- Find references
    keymap("n", "gi", vim.lsp.buf.implementation, opts)                              -- Go to implementation
    keymap("n", "K", vim.lsp.buf.hover, opts)                                        -- Hover information
    keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)                              -- Rename symbol
    keymap("n", "<leader>c", vim.lsp.buf.code_action, opts)                         -- Code actions
    keymap("n", "<C-f>", function() vim.lsp.buf.format { async = true } end, opts) -- Format
end

-- Setup LSP servers with lspconfig
local lspconfig = require("lspconfig")

-- Example: Python (pyright), JavaScript/TypeScript (tsserver), and Lua
local servers = { "pyright", "ts_ls", "lua_ls" }

for _, server in ipairs(servers) do
    lspconfig[server].setup {
        on_attach = on_attach, -- Attach keybindings
    }
end
