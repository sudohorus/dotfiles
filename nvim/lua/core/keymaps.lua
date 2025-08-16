vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)
vim.keymap.set('n', 'x', '"_x', opts)

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

vim.keymap.set('n', '<C-Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<C-S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts)
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts)

vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', 'p', '"_dP', opts)

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Ir para diagnóstico anterior' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Ir para próximo diagnóstico' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Mostrar mensagem de diagnóstico' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Abrir lista de diagnósticos' })