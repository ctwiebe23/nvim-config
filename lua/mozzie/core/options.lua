-- tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- ruler and linecount
vim.opt.colorcolumn = "80"
vim.opt.number = true
vim.opt.relativenumber = true

-- better-white-space
vim.g.better_whitespace_guicolor = '#ffa07a'
vim.g.better_whitespace_filetypes_blacklist={}

local rainbow = require 'rainbow-delimiters'
vim.g.rainbow = {
  strategy = {
    [''] = rainbow.strategy['local'],
  },
}

-- colorscheme
-- options:
-- - tokyonight
-- - kanagawa
-- - nightfox
--   - nordfox
--   - carbonfox
-- - catppuccin
-- - gruvbox
vim.cmd 'colorscheme kanagawa'
