vim.api.nvim_set_var('EasyMotion_smartcase', 1)
vim.api.nvim_set_var('EasyMotion_prompt', 'Jump to → ')
vim.api.nvim_set_var('incsearch#auto_nohlsearch', 1)

vim.api.nvim_set_keymap('n', 'f', '<Plug>(easymotion-f)', { noremap = false })
vim.api.nvim_set_keymap('n', 'F', '<Plug>(easymotion-F)', { noremap = false })
vim.api.nvim_set_keymap('x', 'f', '<Plug>(easymotion-f)', { noremap = false })
vim.api.nvim_set_keymap('x', 'F', '<Plug>(easymotion-F)', { noremap = false })
vim.api.nvim_set_keymap('o', 'f', '<Plug>(easymotion-f)', { noremap = false })
vim.api.nvim_set_keymap('o', 'F', '<Plug>(easymotion-F)', { noremap = false })

vim.api.nvim_set_keymap('n', 't', '<Plug>(easymotion-t)', { noremap = false })
vim.api.nvim_set_keymap('n', 'T', '<Plug>(easymotion-T)', { noremap = false })
vim.api.nvim_set_keymap('x', 't', '<Plug>(easymotion-t)', { noremap = false })
vim.api.nvim_set_keymap('x', 'T', '<Plug>(easymotion-T)', { noremap = false })
vim.api.nvim_set_keymap('o', 't', '<Plug>(easymotion-t)', { noremap = false })
vim.api.nvim_set_keymap('o', 'T', '<Plug>(easymotion-T)', { noremap = false })

vim.api.nvim_set_keymap('n', '/', '<Plug>(incsearch-forward)', { noremap = false })
vim.api.nvim_set_keymap('n', '?', '<Plug>(incsearch-backward)', { noremap = false })

vim.api.nvim_set_keymap('n', 'g/', '<Plug>(incsearch-easymotion-/)', { noremap = false })
vim.api.nvim_set_keymap('n', 'g?', '<Plug>(incsearch-easymotion-?)', { noremap = false })

vim.api.nvim_set_keymap('n', 'z/', '<Plug>(incsearch-stay)', { noremap = false })
vim.api.nvim_set_keymap('n', 'z?', '<Plug>(incsearch-easymotion-stay)', { noremap = false })

vim.api.nvim_set_keymap('n', 'n', '<Plug>(incsearch-nohl-n)', { noremap = false })
vim.api.nvim_set_keymap('n', 'N', '<Plug>(incsearch-nohl-N)', { noremap = false })
vim.api.nvim_set_keymap('n', '*', '<Plug>(incsearch-nohl-*)', { noremap = false })
vim.api.nvim_set_keymap('n', '#', '<Plug>(incsearch-nohl-#)', { noremap = false })
vim.api.nvim_set_keymap('n', 'g*', '<Plug>(incsearch-nohl-g*)', { noremap = false })
vim.api.nvim_set_keymap('n', 'g#', '<Plug>(incsearch-nohl-g#)', { noremap = false })
vim.api.nvim_set_keymap('n', ']w', '<Plug>(incsearch-nohl-g*)', { noremap = false })
vim.api.nvim_set_keymap('n', '[w', '<Plug>(incsearch-nohl-g#)', { noremap = false })