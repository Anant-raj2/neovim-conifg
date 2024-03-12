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
	{
		"sainnhe/sonokai",
		priority = 1000,
		config = function()
			vim.g.sonokai_transparent_background = "1"
			vim.g.sonokai_enable_italic = "1"
			vim.g.sonokai_style = "andromeda"
			vim.cmd.colorscheme("sonokai")
		end,
	},
	-- {
	--   "craftzdog/solarized-osaka.nvim",
	--   lazy = true,
	--   priority = 1000,
	--   opts = function()
	--     return {
	--       transparent = true,
	--     }
	--   end,
	-- },
	-- {
	--   "rose-pine/neovim",
	--   name = "rose-pine",
	--   config = function()
	--     vim.cmd.colorscheme("rose-pine")
	--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	--   end,
	-- },
}
