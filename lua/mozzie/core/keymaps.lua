-- keymaps
local new_keymap = function(mode, new, old)
  vim.api.nvim_set_keymap(mode, new, old,
      { noremap = true, silent = true })
end

local auto_complete_keymap = function(mode, new, old)
  vim.keymap.set(mode, new, function()
    if vim.fn.pumvisible() == 1 then return old end
    return new
  end, { expr = true })
end

-- auto-complete
auto_complete_keymap('i', '<m-j>', '<c-n>')
auto_complete_keymap('i', '<m-k>', '<c-p>')
