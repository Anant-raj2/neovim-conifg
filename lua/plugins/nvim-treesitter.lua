return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"cpp",
					"python",
					"lua",
					"java",
					"javascript",
					"typescript",
					"tsx",
					"json",
					"yaml",
					"html",
					"css",
					"go",
				},
				sync_install = false,
				auto_install = true,
				ignore_install = { "" }, -- List of parsers to ignore installing
				highlight = {
					enable = true, -- false will disable the whole extension
					additional_vim_regex_highlighting = false,
				},
			})
		end,
	},
}
