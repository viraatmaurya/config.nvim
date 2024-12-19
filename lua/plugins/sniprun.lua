return {
    "michaelb/sniprun",
    build = "sh install.sh", -- Required for building SnipRun
    config = function()
        require("sniprun").setup({
            display = {
                -- "Classic",               -- Results appear below the code
                "VirtualText",           -- Inline virtual text output
            },
            live_mode_toggle = "enable", -- Toggle live mode for execution
            borders = "single",          -- Border style for floating windows
        })
    end,
}
