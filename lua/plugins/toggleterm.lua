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

		-- Create a terminal dedicated for compilation
		local Terminal = require("toggleterm.terminal").Terminal
		local compile_term = Terminal:new({
			cmd = "", -- will be set dynamically
			hidden = true,
			direction = "float",
			close_on_exit = false,
			on_open = function(term)
				vim.api.nvim_buf_set_option(term.bufnr, "filetype", "compilelog")
			end,
		})

		-- Function to compile and show status
		function _G.compile_command(cmd)
			if not cmd or cmd == "" then
				cmd = vim.fn.input(":", "", "shellcmd")
			end
			local start_time = vim.loop.hrtime()
			compile_term.cmd = cmd
			compile_term:toggle()
			compile_term:send(cmd .. "\n")
		end

		-- Keybindings
		vim.keymap.set({ "n", "t" }, "<C-;>", function()
			compile_command()
		end, { desc = "Run compilation command in floating terminal" })

		vim.keymap.set(
			{ "n", "t" },
			"<C-/>",
			"<cmd>ToggleTerm direction=float<CR>",
			{ desc = "Toggle floating terminal" }
		)
	end,
}
