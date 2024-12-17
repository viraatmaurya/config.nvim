return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Automatically updates parsers after installation
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "python", "javascript" }, -- Add desired languages
            sync_install = false,  -- Install parsers asynchronously
            auto_install = true,   -- Automatically install missing parsers
            highlight = {
                enable = true,     -- Enable syntax highlighting
                additional_vim_regex_highlighting = false, -- Disable Vim's regex highlighting
            },
        })
    end,
}

