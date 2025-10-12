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
				cmd = vim.fn.input("COMMAND: ", " ", "shellcmd")
			end
			local start_time = vim.loop.hrtime()
			compile_term.cmd = cmd
			compile_term:toggle()
			compile_term:send(cmd .. "\n")

			-- watch for exit code
			vim.defer_fn(function()
				local elapsed = (vim.loop.hrtime() - start_time) / 1e9
				print(("✅ Compilation finished in %.2fs"):format(elapsed))
			end, 2000)
		end

		-- Keybindings
		vim.keymap.set("n", "<leader>c", function()
			compile_command()
		end, { desc = "Run compilation command in floating terminal" })

		vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle terminal" })
	end,
}
