return {
    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    -- Formatters
                    null_ls.builtins.formatting.black,
                    null_ls.builtins.formatting.autopep8,

                    -- Linters
                    null_ls.builtins.diagnostics.flake8.with({
                        extra_args = { "--ignore=E501" }, -- Ignore line length warnings
                    }),
                    null_ls.builtins.diagnostics.pylint.with({
                        extra_args = { "--disable=C0114,C0115,C0116" }, -- Ignore missing docstring warnings
                    }),
                },
            })
        end,
    },
}

