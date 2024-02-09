return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})

			-- Telescope keybinds --
			vim.keymap.set("n", "<leader>?", builtin.oldfiles, { desc = "[?] Find recently opened files" })
			vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch Open [B]uffers" })

			vim.keymap.set("n", "<leader>sc", function()
				builtin.commands(require("telescope.themes").get_dropdown({
					previewer = false,
				}))
			end, { desc = "[S]earch [C]ommands" })

			vim.keymap.set("n", "<leader>ss", function()
				builtin.spell_suggest(require("telescope.themes").get_dropdown({
					previewer = false,
				}))
			end, { desc = "[S]earch [S]pelling suggestions" })
			require("telescope").load_extension("ui-select")
		end,
	},
}
