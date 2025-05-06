-- tab
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

-- ruler and linecount
vim.opt.colorcolumn = "80"
vim.opt.number = true
vim.opt.relativenumber = true

-- better-white-space
vim.g.better_whitespace_guicolor = '#ffa07a'
vim.g.better_whitespace_filetypes_blacklist={}

-- local rainbow = require 'rainbow-delimiters'
-- vim.g.rainbow = {
--   strategy = {
--     [''] = rainbow.strategy['local'],
--   },
-- }

-- treesitter
-- vim.treesitter.language.register('html', 'xhtml');
vim.cmd('autocmd BufRead,BufNewFile *.xhtml set filetype=html')
vim.cmd('autocmd BufRead,BufNewFile *.php set filetype=html')
vim.cmd('autocmd BufRead,BufNewFile *.inc.php set filetype=html')
vim.cmd('autocmd BufRead,BufNewFile *.wat set filetype=wast')
vim.cmd('autocmd BufNewFile,BufRead *.cshtml set filetype=html')
vim.cmd('autocmd BufNewFile,BufRead *.razor set filetype=html')

-- colorscheme
-- options:
-- - tokyonight
-- - kanagawa
-- - nightfox
--   - nordfox
--   - carbonfox
-- - gruvbox
vim.cmd 'colorscheme kanagawa'
