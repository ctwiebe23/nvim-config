-- tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- ruler and linecount
vim.opt.colorcolumn = "80"
vim.opt.relativenumber = true

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

-- better-white-space
vim.g.better_whitespace_guicolor = '#ffa07a'
vim.g.better_whitespace_filetypes_blacklist={}

-- configure kanagawa
require('kanagawa').setup({
  commentStyle = { italic = false },
  functionStyle = {},
  keywordStyle = { italic = true},
  statementStyle = { bold = true },
  typeStyle = {},
  colors = {
    palette = {},
    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
  },
  overrides = function(colors)  -- add/modify highlights
    return {}
  end,
  theme = "wave",  -- default when `background` isn't set
  background = {
    dark = "wave",  -- options: wave, lotus, dragon
    light = "lotus"
  },
})

-- colorscheme
vim.cmd 'colorscheme kanagawa'  -- options: tokyonight, kanagawa
