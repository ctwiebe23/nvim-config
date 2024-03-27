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

-- configure nightfox
require('nightfox').setup({
  options = {
    styles = {
      comments = "NONE",
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "italic",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "bold",
      variables = "NONE",
    }
  }
})

-- configure catppuccin
require('catppuccin').setup({
  flavour = 'mocha', -- frappe, macchiato, mocha
  styles = {
    comments = {},
    conditionals = {},
    loops = {},
    functions = {},
    keywords = { "italic" },
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = { "bold" },
    operators = {},
  }
})

-- colorscheme
-- options:
-- - tokyonight
-- - kanagawa
-- - nightfox
--   - nordfox
--   - carbonfox
-- - catppuccin
vim.cmd 'colorscheme catppuccin'
