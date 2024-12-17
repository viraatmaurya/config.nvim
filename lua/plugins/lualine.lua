return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "kyazdani42/nvim-web-devicons" }, -- Optional: for file type icons
  config = function()
    require('lualine').setup {
      options = {
        theme = "gruvbox", -- Set your theme here
                section_separators = { left = "", right = "" },
                component_separators = { left = "", right = "" },
                disabled_filetypes = { "NvimTree", "packer" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      extensions = { "fugitive" },
      -- Add the Linux logo to the lualine_a section
      sections = {
        lualine_a = { "mode", { '', separator = { left = '' }, right_padding = 2 } },
      },
    }
  end
}

