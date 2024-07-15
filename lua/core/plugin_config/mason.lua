-- Configuração do Mason
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "gopls", "jsonls", "tsserver" },
	automatic_installation = true,
})

-- Configuração do null-ls e mason-null-ls
local null_ls = require("null-ls")
local mason_null_ls = require("mason-null-ls")

mason_null_ls.setup({
	ensure_installed = { "prettier", "eslint_d", "stylua" },
	automatic_installation = true,
})

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.diagnostics.eslint_d,
		null_ls.builtins.code_actions.eslint_d,
		null_ls.builtins.formatting.stylua,
	},
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ async = true })")
		end
	end,
})
