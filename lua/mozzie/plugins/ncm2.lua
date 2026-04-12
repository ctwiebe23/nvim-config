return {
  {
    'ncm2/ncm2',
    config = function()
      vim.opt.completeopt = { 'noinsert', 'menuone', 'noselect' }

      vim.api.nvim_create_autocmd({'BufEnter'}, {
        pattern = {'*'},
        callback = function(ev)
          vim.call('ncm2#enable_for_buffer')
        end
      })
    end,
  },
  { 'ncm2/ncm2-bufword' },  -- Words in curr buf
  { 'ncm2/ncm2-path' },  -- Paths
  { 'ncm2/ncm2-cssomni' },  -- CSS
  { 'Shougo/neco-syntax' },  -- General Syntax
  -- These all get hit by "Job is dead":
  -- { 'ncm2/ncm2-racer' },  -- Rust
  -- { 'ncm2/ncm2-pyclang' },  -- C/++
  -- { 'ncm2/ncm2-jedi' },  -- Python
  -- { 'ncm2/ncm2-tern' },  -- JavaScript
  -- { 'ncm2/ncm2-neoinclude' },  -- Includes/Imports
}
