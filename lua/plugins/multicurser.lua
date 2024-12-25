return {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    config = function()
        local mc = require("multicursor-nvim")

        mc.setup()

        local set = vim.keymap.set

        -- Add or skip cursor by matching the word under the cursor.
        set({ "n", "v" }, "<C-d>", function() mc.matchAddCursor(1) end)    -- Add next match
        set({ "n", "v" }, "<C-S-d>", function() mc.matchAddCursor(-1) end) -- Add previous match
        set({ "n", "v" }, "<C-A-d>", mc.matchAllAddCursors)                -- Add all matches in the document
        set("n", "<Esc>", function()
            if mc.hasCursors() then
                mc.clearCursors() -- Clear all active cursors
            else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
            end
        end)
    end
}
