-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "c", "cpp", "bash", "html", "javascript" }, -- add more if needed
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}

