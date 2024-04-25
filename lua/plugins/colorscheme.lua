return {
	-- {
	--   "catppuccin/nvim",
	--   lazy = false,
	--   name = "catppuccin",
	--   priority = 1000,
	--   flavor = "mocha",
	--
	--   config = function()
	--     require("catppuccin").setup({
	--       "catppuccin/nvim",
	--       name = "catppuccin",
	--       opts = {
	--         term_colors = true,
	--         transparent_background = false,
	--         styles = {
	--           comments = {},
	--           conditionals = {},
	--           loops = {},
	--           functions = {},
	--           keywords = {},
	--           strings = {},
	--           variables = {},
	--           numbers = {},
	--           booleans = {},
	--           properties = {},
	--           types = {},
	--         },
	--         color_overrides = {
	--           mocha = {
	--             base = "#000000",
	--             mantle = "#000000",
	--             crust = "#000000",
	--           },
	--         },
	--         integrations = {
	--           dropbar = {
	--             enabled = true,
	--             color_mode = true,
	--           },
	--         },
	--       },
	--       color_overrides = {
	--         mocha = {
	--           base = "#000000",
	--           mantle = "#000000",
	--           crust = "#000000",
	--         },
	--       },
	--       integrations = {
	--         dropbar = {
	--           enabled = true,
	--           color_mode = true,
	--         },
	--       },
	--     })
	--     vim.cmd.colorscheme("catppuccin")
	--   end,
	-- },
	-- {
	-- 	"sainnhe/sonokai",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.sonokai_transparent_background = "1"
	-- 		vim.g.sonokai_enable_italic = "1"
	-- 		vim.g.sonokai_style = "andromeda"
	-- 		vim.cmd.colorscheme("sonokai")
	-- 	end,
	-- },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true,
					migrations = true,
				},

				styles = {
					bold = true,
					italic = true,
					transparency = true,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				highlight_groups = {},
			})
			vim.cmd("colorscheme rose-pine")
		end,
	},
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	config = function()
	-- 		vim.g.gruvbox_contrast_dark = "hard"
	-- 		vim.g.gruvbox_italic = 1
	-- 		vim.cmd.colorscheme("gruvbox")
	-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- 	end,
	-- },
}
