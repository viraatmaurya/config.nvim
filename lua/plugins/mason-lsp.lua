return {
    {
        "williamboman/mason.nvim",
        version = "*",
        config = function()
            require("mason").setup()
        end
    },


    {
        "williamboman/mason-lspconfig.nvim",
        version = "*",
        config = function()
            require("mason-lspconfig").setup({
                ensured_installed = { "lua_ls", "clangd", "pyright" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({
                on_attach = function(client, bufnr)
                    -- Keybindings and other configurations can be added here
                    local opts = { noremap = true, silent = true, buffer = bufnr }
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                end,
                capabilities = require("cmp_nvim_lsp").default_capabilities(), -- Enable completion capabilities
                cmd = { "clangd", "--clang-tidy", "--completion-style=detailed" }, -- Optional: Custom flags:
            })
        end
    }
}
