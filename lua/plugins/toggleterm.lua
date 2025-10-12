return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local toggleterm = require("toggleterm")

		toggleterm.setup({
			size = 15,
			open_mapping = [[<C-\>]],
			direction = "float",
			shade_terminals = true,
			float_opts = {
				border = "curved",
				winblend = 3,
			},
		})

		vim.keymap.set(
			{ "n", "t" },
			"<C-;>",
			"<cmd>ToggleTerm direction=float<CR>",
			{ desc = "Toggle floating terminal" }
		)
	end,
}
