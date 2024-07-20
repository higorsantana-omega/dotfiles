local g = vim.g
local map = function(mode, key, command)
  vim.keymap.set(mode, key, command, { noremap = true, silent = true })
end

vim.g.mapleader = ' '

-- Para Salvar com 'Ctrl + S' nos modos: Normal, Inserção e Visual
-- Precisa adicionar a linha: stty -ixon , ao seu ~/.bashrc
vim.cmd([[ nnoremap <C-s> :w<CR> ]])
vim.cmd([[ inoremap <C-s> <Esc>:w<CR>l ]])
vim.cmd([[ vnoremap <C-s> <Esc>:w<CR> ]])

-- Copilot
map('n', '<S-Tab>', '<Plug>(copilot-accept)')

-- Split navigation ----------------------
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Split -
map('n', 'qq', ':vsplit<CR>')
map('n', 'ww', ':split<CR>')

-- Close panel
map('n', '<S-q>', ':x<CR>')

-- Plugins -------------------------------

-- Nvim tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle Tree' })

-- Bufferline
vim.cmd([[ nnoremap <silent> <S-l> :BufferLineCycleNext<CR> ]])
vim.cmd([[ vnoremap <silent> <S-l> <Esc>:BufferLineCycleNext<CR> ]])

vim.cmd([[ nnoremap <silent> <S-h> :BufferLineCyclePrev<CR> ]])
vim.cmd([[ vnoremap <silent> <S-h> <Esc>:BufferLineCyclePrev<CR> ]])

-- Telescope
map('n', 'ff', '<cmd>Telescope find_files<CR>')
map('n', 'fg', ':lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>')
map('n', 'fb', '<cmd>Telescope buffers<CR>')

-- Smart splits
require('smart-splits').resize_up(amount)
require('smart-splits').resize_down(amount)
require('smart-splits').resize_left(amount)
require('smart-splits').resize_right(amount)

require('smart-splits').move_cursor_up()
require('smart-splits').move_cursor_down()
require('smart-splits').move_cursor_left(same_row)
require('smart-splits').move_cursor_right(same_row)

require('smart-splits').swap_buf_up()
require('smart-splits').swap_buf_down()
require('smart-splits').swap_buf_left()
require('smart-splits').swap_buf_right()

vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)

-- Pantran
map('n', 'tr', ':Pantran<CR>')
map('v', 'tr', ':Pantran<CR>')

-- ToggleTerm
map('n', '<C-\\>', ':ToggleTerm<CR>')
map('t', '<C-\\>', '<cmd>:ToggleTerm<CR>')
