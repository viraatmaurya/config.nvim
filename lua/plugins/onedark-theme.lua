return {
    'navarasu/onedark.nvim',
    config = function()
        require("onedark").setup({
            style = "deep",
            transparent = false, -- Set to true if you want a transparent background
            term_colors = true,  -- Enable terminal colors
            ending_tildes = false, -- Remove tildes from empty lines
            cmp_itemkind_reverse = false, -- Reverse kind symbols in completion menu

            -- Custom highlights
            highlights = {
                Comment = { fg = '#5c6370', italic = true }, -- Italic for comments
                Function = { fg = '#61afef', bold = true }, -- Bold functions
                Keyword = { fg = '#c678dd', italic = true }, -- Italic keywords
                String = { fg = '#98c379', bold = true }, -- Bold for strings
                Variable = { fg = '#e06c75' },      -- Variables in red
                Type = { fg = '#e5c07b', bold = true }, -- Bold for types
                Identifier = { fg = '#d19a66', italic = true }, -- Italic identifiers
            },

            -- Global options for bold/italic styles
            options = {
                bold = true,
                italic = true,
                underline = false,
            },
        })
        require("onedark").load()
    end,
}
