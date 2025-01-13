-- keymaps

-- general
vim.keymap.set('n', '<C-t>', ':w<cr>:terminal<cr>', { silent = true })

-- spellcheck
vim.keymap.set('n', '<C-s>', function()
  vim.opt.spell = not(vim.opt.spell:get())
end, { silent = true })

-- clojure
vim.keymap.set('n', '<m-c>', ':w<cr>:!cljfmt check %<cr>', { silent = true })
vim.keymap.set('n', '<m-v>', ':w<cr>:!cljfmt fix %<cr>', { silent = true })

-- LaTeX
vim.keymap.set('n', '<m-p>', ':w<cr>:!pdflatex %<cr>', { silent = true })

-- auto-complete
local auto_complete_keymap = function(mode, new, old)
  vim.keymap.set(mode, new, function()
    if vim.fn.pumvisible() == 1 then return old end
    return new
  end, { expr = true })
end

auto_complete_keymap('i', '<down>', '<c-n>')
auto_complete_keymap('i', '<up>', '<c-p>')

-- follow-md-links
vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })

-- fzf
vim.keymap.set('n', '<C-f>', ':Files<cr>', { silent = true })
vim.keymap.set('n', '<C-b>', ':Buffers<cr>', { silent = true })

-- disable ALE syntax highlighting
vim.keymap.set('n', '<m-d>', ':ALEDisable<cr>', { silent = true })
