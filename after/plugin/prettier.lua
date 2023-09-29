vim.api.nvim_set_keymap('n', '<C-s>', ':try | Neoformat prettier | catch | endtry | write<CR>', { noremap = true, silent = true })

