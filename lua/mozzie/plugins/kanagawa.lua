return {
  'rebelot/kanagawa.nvim',
  opts = {
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
  }
}
