return {
	  {
    "github/copilot.vim"
  },
  {
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "gopls", "tsserver", "clangd"},
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

			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.gopls.setup({})
      lspconfig.clangd.setup({
        on_attach = function(client, bufnr)
          client.server_capabilities.signatureHelpProvider = false
          on_attach(client, bufnr)
        end,
        capabilities = capabilities,
      })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
