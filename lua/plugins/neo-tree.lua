return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, for file icons
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            window = {
                position = "right", -- Open Neo-tree on the right
                width = 30,         -- Set the width of the Neo-tree window
            },
            filesystem = {
                follow_current_file = true,             -- Focus on the current file
                hijack_netrw_behavior = "open_current", -- Replace netrw with Neo-tree
            },
        })

        -- Set keybinding for toggling Neo-tree
        vim.keymap.set('n', '<M-f>', ':Neotree toggle<CR>', { noremap = true, silent = true })
    end,
}
