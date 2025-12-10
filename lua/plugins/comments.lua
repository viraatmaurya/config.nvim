return {
  "numToStr/Comment.nvim",
  lazy = false,
  config = function()
    require("Comment").setup()

    -- KEYMAPPINGS: Ctrl-/
    local api = require("Comment.api")
    local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)

    -- Normal mode: Ctrl-/
    vim.keymap.set("n", "<C-/>", function()
      api.toggle.linewise.current()
    end, { noremap = true, silent = true })

    -- Visual mode: Ctrl-/
    vim.keymap.set("v", "<C-/>", function()
      -- exit visual mode so Comment.nvim can toggle correctly
      vim.api.nvim_feedkeys(esc, "nx", false)
      api.toggle.linewise(vim.fn.visualmode())
    end, { noremap = true, silent = true })
  end
}

