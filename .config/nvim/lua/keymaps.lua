local keymap = vim.keymap
local nvim_set_keymap = vim.api.nvim_set_keymap
keymap.set('n', '<leader>h', ':nohlsearch<CR>')
nvim_set_keymap('n', '<C-p>', ':PackerSync<CR>', { noremap = true })
nvim_set_keymap('n', '<C-s>', '', { noremap = true, callback = vim.cmd.write })
nvim_set_keymap('i', '<C-s>', '', { noremap = true, callback = vim.cmd.write })
nvim_set_keymap('n', '<C-b>', ':NvimTreeFocus<CR>', { noremap = true })
nvim_set_keymap('n', '<C-m>', ':Mason<CR>', { noremap = true})
nvim_set_keymap('n', '<C-i>', ':lua vim.lsp.buf.hover()<CR>', { noremap = true})

nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true })
nvim_set_keymap('n', '<M-1>', ':1tabnext<CR>', { noremap = true })
nvim_set_keymap('n', '<M-2>', ':2tabnext<CR>', { noremap = true })
nvim_set_keymap('n', '<M-3>', ':3tabnext<CR>', { noremap = true })
nvim_set_keymap('n', '<M-4>', ':4tabnext<CR>', { noremap = true })
nvim_set_keymap('n', '<M-5>', ':5tabnext<CR>', { noremap = true })
nvim_set_keymap('n', '<M-6>', ':6tabnext<CR>', { noremap = true })
nvim_set_keymap('n', '<M-7>', ':7tabnext<CR>', { noremap = true })
nvim_set_keymap('n', '<M-8>', ':8tabnext<CR>', { noremap = true })
nvim_set_keymap('n', '<M-9>', ':9tabnext<CR>', { noremap = true })



vim.cmd[[
  autocmd BufWritePost *.tex :VimtexCompile
]]

