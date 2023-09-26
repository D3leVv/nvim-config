require('Comment').setup()

vim.api.nvim_set_keymap('n', '<leader>//', ':CommentToggle<CR>', {noremap = true, silent = true})

