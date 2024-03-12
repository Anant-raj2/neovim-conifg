return {
	{
		"github/copilot.vim",
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				opts = {
					auto_install = true,
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local base = require("lspconfig.configs")
			local on_attach = base.on_attach
			local capabilities = base.capabilities
			local util = require("lspconfig/util")

			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})

			lspconfig.gopls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				root_dir = util.root_pattern("go.mod", "go.work", ".git"),
				settings = {
					gopls = {
						completeUnimported = true,
						usePlaceholders = true,
						analyses = {
							unusedparams = true,
						},
					},
				},
			})

			-- lspconfig.gopls.setup({
			--   on_attach = function(client, bufnr)
			--     client.server_capabilities.signatureHelpProvider = false
			--     on_attach(client, bufnr)
			--   end,
			--   capabilities = capabilities,
			-- })

			lspconfig.clangd.setup({
				on_attach = function(client, bufnr)
					client.server_capabilities.signatureHelpProvider = false
					on_attach(client, bufnr)
				end,
				capabilities = capabilities,
			})
			vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
