-- colorscheme
vim.cmd 'colorscheme tokyonight'

-- tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- autopairs
require('nvim-autopairs').setup({
  enable_check_bracket_line = false, 
})

-- section-wordcount
--require('section-wordcount').setup{
--  highlight = "String",
--  virt_text_pos = "eol",
--}

-- enable wordcount for markdown
--vim.api.nvim_create_autocmd(
--  {"FileType"},
--  {
--    pattern = "markdown",
--    callback = function()
--      require('section-wordcount').wordcounter{}
--    end,
--  }
--)
