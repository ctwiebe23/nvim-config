return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    vim.o.termguicolors = true
    local colorizer = require("colorizer")

    colorizer.setup({
      '*',  -- match every filetype
    },
    {
      names = false,  -- don't highlight color names like "Blue"
    })
  end,
}
