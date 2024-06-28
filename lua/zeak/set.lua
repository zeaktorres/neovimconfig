vim.opt.guicursor = "" 
vim.opt.nu = true 
vim.opt.relativenumber = true 
vim.opt.wrap = false 
vim.opt.hlsearch = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.wrap = false 
vim.opt.hlsearch = false 
vim.opt.incsearch = true 
vim.opt.termguicolors = true 
vim.opt.scrolloff = 8 
vim.opt.updatetime = 50
vim.opt.wrap = true
vim.keymap.set("n", "<leader>vd", function()
    vim.diagnostic.open_float()
end, opts)
