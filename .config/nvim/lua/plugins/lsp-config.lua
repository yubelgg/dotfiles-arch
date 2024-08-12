return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "tsserver", "pyright", "clangd" },
		})
		local lspconfig = require("lspconfig")
		local on_attach = function(client, bufnr)
			local opts = { buffer = bufnr, remap = false }
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		end
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = vim.lsp.protocol.make_client_capabilities(capabilities)
		capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
		lspconfig.lua_ls.setup({ on_attach = on_attach, capabilities = capabilities })
		lspconfig.tsserver.setup({ on_attach = on_attach, capabilities = capabilities })
		lspconfig.tailwindcss.setup({ on_attach = on_attach, capabilities = capabilities })
		lspconfig.pyright.setup({ on_attach = on_attach, capabilities = capabilities, filetypes = { "python" } })
		lspconfig.clangd.setup({ on_attach = on_attach, capabilities = capabilities })
		lspconfig.astro.setup({ on_attach = on_attach, capabilities = capabilities })
	end,
}
