-- keymaps
vim.keymap.set({'i','n','c','v','t'}, '<m-q>', '<esc>', { silent = true })
vim.keymap.set({'i','n','c','v','t'}, '<m-h>', '<left>', { silent = true })
vim.keymap.set({'i','n','c','v','t'}, '<m-j>', '<down>', { silent = true })
vim.keymap.set({'i','n','c','v','t'}, '<m-k>', '<up>', { silent = true })
vim.keymap.set({'i','n','c','v','t'}, '<m-l>', '<right>', { silent = true })

-- follow-md-links
vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })

-- fzf
vim.keymap.set('n', '<m-f>', ':Files<cr>', { silent = true })
vim.keymap.set('n', '<m-b>', ':Buffers<cr>', { silent = true })
