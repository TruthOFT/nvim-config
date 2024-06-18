local null_ls = require("null-ls")

-- Define the sources
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.stylua, -- For Lua
		null_ls.builtins.formatting.prettier, -- For JavaScript, TypeScript, etc.
		null_ls.builtins.formatting.clang_format, -- For C, C++, etc.
		-- Add more formatters here
	},
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			vim.api.nvim_create_augroup("LspFormatting", { clear = true })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = "LspFormatting",
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format()
				end,
			})
		end
	end,
})
