return {
  'lukas-reineke/indent-blankline.nvim',
  main = "ibl",
  opts = {
    scope = { enabled = false },
    exclude = { filetypes = { 'clojure', 'sql', 'tex' } },
  },
}