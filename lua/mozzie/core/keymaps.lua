-- keymaps

-- auto-complete
local auto_complete_keymap = function(mode, new, old)
  vim.keymap.set(mode, new, function()
    if vim.fn.pumvisible() == 1 then return old end
    return new
  end, { expr = true })
end

auto_complete_keymap('i', '<m-j>', '<c-n>')
auto_complete_keymap('i', '<m-k>', '<c-p>')

-- follow-md-links
vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })

-- fzf
vim.keymap.set('n', '<m-f>', ':Files<cr>', { silent = true })
vim.keymap.set('n', '<m-b>', ':Buffers<cr>', { silent = true })
