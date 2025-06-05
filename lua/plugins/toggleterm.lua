return
{
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      direction = "float",
      start_in_insert = true,
    }

    local function toggle_floating_term()
      vim.cmd("ToggleTerm direction=float")
      vim.cmd("startinsert")
    end

    vim.keymap.set({ "n", "i", "v", "t" }, [["]], toggle_floating_term, { noremap = true, silent = true })
  end
}
