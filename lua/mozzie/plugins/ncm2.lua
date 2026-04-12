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
  { 'ncm2/ncm2-bufword' },
  { 'ncm2/ncm2-path' },
}
