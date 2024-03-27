vim.keymap.set('n', '<leader>of', ":edit .<CR>", {})
vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })

-- Move up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")

-- ??
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-u>zz")

-- Search and Replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Fix markdown bug
vim.keymap.set('n', '<leader>uc', ":syn clear markdownError<CR>")

vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
