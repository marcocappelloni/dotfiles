return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Show info of the element under the cursor" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to the definition" })
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to the declaration" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to the references" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions in case of error" })
            vim.keymap.set('n', '<leader>m', ":Mason<CR>", { desc = 'Mason' })
		end,
	},
}
