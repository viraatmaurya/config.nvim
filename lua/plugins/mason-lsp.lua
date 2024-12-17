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
                ensured_installed = { "lua_ls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
        end
    }
}
