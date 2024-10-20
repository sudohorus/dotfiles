return{
  'thimc/gruber-darker.nvim',
  config = function()
    require('gruber-darker').setup({
      transparent = false, 
      bold = false
    })
    vim.cmd.colorscheme('gruber-darker')
  end,
}
