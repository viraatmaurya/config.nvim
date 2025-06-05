return {
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        cmd = { "TroubleToggle", "Trouble" },
        keys = {
            { "<leader>xx", "<cmd>TroubleToggle<cr>",                       desc = "Toggle Trouble" },
            { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
            { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "Document Diagnostics" },
            { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",              desc = "Quickfix List" },
            { "<leader>xl", "<cmd>TroubleToggle loclist<cr>",               desc = "Location List" },
            { "gR",         "<cmd>TroubleToggle lsp_references<cr>",        desc = "LSP References" },
        },
        opts = {
            position = "bottom", -- position of the list can be: bottom, top, left, right
            height = 12, -- height of the trouble list when position is top or bottom
            width = 50, -- width of the list when position is left or right
            icons = true, -- use devicons for filenames
            mode = "workspace_diagnostics", -- default mode: workspace_diagnostics, document_diagnostics, quickfix, loclist, lsp_references
            fold_open = "", -- icon used for open folds
            fold_closed = "", -- icon used for closed folds
            group = true, -- group results by file
            padding = true, -- add an extra new line on top of the list
            cycle_results = true, -- cycle item list when reaching beginning or end
            auto_open = false,
            auto_close = false,
            auto_preview = false,        -- automatically preview the location of the diagnostic
            use_diagnostic_signs = true, -- use signs defined in your LSP client

            action_keys = {              -- key mappings for actions
                close = "q",
                cancel = "<esc>",
                refresh = "r",
                jump = { "<cr>", "<tab>" },
                open_split = { "<c-x>" },
                open_vsplit = { "<c-v>" },
                open_tab = { "<c-t>" },
                toggle_mode = "m",
                toggle_preview = "P",
                hover = "K",
                preview = "p",
                close_folds = "zM",
                open_folds = "zR",
                toggle_fold = "zA",
                previous = "k",
                next = "j",
            },
        },
    }

}
