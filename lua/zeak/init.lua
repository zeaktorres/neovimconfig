require("zeak.remap")
require("zeak.set")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.vimtex_view_method = "zathura"
        end
    },
    {
        "neovim/nvim-lspconfig"
    },
    {
        "dense-analysis/ale"
    },
    {
        "sindrets/diffview.nvim"
    },
    {
        "VonHeikemen/fine-cmdline.nvim"
    },
    {
        "MunifTanjim/nui.nvim"
    },
    {
        "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }
    },
    {
        "theHamsta/nvim-dap-virtual-text"
    }, 
    {
        "leoluz/nvim-dap-go"
    },
	{
		"jose-elias-alvarez/null-ls.nvim",
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"clangd",
				"clang-format",
				"codelldb",
			},
		},
	},
	{ "williamboman/mason-lspconfig" },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.4", dependencies = { "nvim-lua/plenary.nvim" } },
	"nvim-treesitter/nvim-treesitter",
	{ "rose-pine/neovim", name = "rose-pine" },
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				opts = {
					ensure_installed = {
						"clangd",
					},
				},
				build = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
		{ "neovim/nvim-lspconfig" },
		{ "simrat39/rust-tools.nvim" },
		{ "nvim-lua/plenary.nvim" },
		{ "mfussenegger/nvim-dap" },
		{ "jose-elias-alvarez/typescript.nvim" },
		{ "hrsh7th/nvim-cmp" },
		{ "l3mon4d3/luasnip" },
		{ "hrsh7th/cmp-path" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-buffer" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "rafamadriz/friendly-snippets" },
	},
})
vim.cmd("colorscheme rose-pine")
