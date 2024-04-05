return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "storm", -- storm, moon, night
    styles = {
      comments = { italic = false },
      keywords = { italic = true },
      functions = {},
      variables = {},
      sidebars = "dark", -- style for sidebars, see below
      floats = "dark", -- style for floating windows
    },
  },
}
