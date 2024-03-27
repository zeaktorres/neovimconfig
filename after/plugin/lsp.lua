vim.opt.clipboard = "unnamedplus"
local lsp = require("lsp-zero").preset({})
lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "clangd" },
	handlers = {
		lsp.default_setup,
	},
})

lsp.skip_server_setup({ "tsserver" })

lsp.setup()

require("typescript").setup({
	server = {
		on_attach = function(client, bufnr)
			-- You can find more commands in the documentation:
			-- https://github.com/jose-elias-alvarez/typescript.nvim#commands

			vim.keymap.set("n", "<leader>ci", "<cmd>TypescriptAddMissingImports<cr>", { buffer = bufnr })
		end,
	},
})

-- For this to work you need to install these plugins:
-- hrsh7th/cmp-path
-- hrsh7th/cmp-nvim-lsp
-- hrsh7th/cmp-buffer
-- saadparwaiz1/cmp_luasnip
-- rafamadriz/friendly-snippets

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "buffer", keyword_length = 3 },
		{ name = "luasnip", keyword_length = 2 },
	},
	mapping = {
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<C-f>"] = cmp_action.luasnip_jump_forward(),
		["<C-b>"] = cmp_action.luasnip_jump_backward(),
		["<C-Space>"] = cmp.mapping.complete(),
	},
})
vim.opt.signcolumn = "no" -- this disables the signcolumn
