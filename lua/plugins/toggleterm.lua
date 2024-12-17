return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 15,
        hide_numbers = true,
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        direction = "float", -- Options: "horizontal", "vertical", "tab", "float"
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = "curved",
          winblend = 0,
        },
      })
      -- Map Alt+/ (both opening and closing the terminal)
      vim.keymap.set("n", "<A-/>", ":ToggleTerm<CR>", { noremap = true, silent = true })
      vim.keymap.set("t", "<A-/>", "<C-\\><C-n>:ToggleTerm<CR>", { noremap = true, silent = true })
    end,
  },
}
