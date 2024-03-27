local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.completion.spell,
		null_ls.builtins.diagnostics.cpplint,
		null_ls.builtins.formatting.clang_format,
		null_ls.builtins.diagnostics.checkmake,
		null_ls.builtins.diagnostics.clang_check,
	},
})

--vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--	callback = function()
--		vim.lsp.buf.format()
--	end,
--})
