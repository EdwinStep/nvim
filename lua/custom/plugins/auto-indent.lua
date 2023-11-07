return {
  'vidocqh/auto-indent.nvim',
  opts = {},
  config = function()
    require("auto-indent").setup({
      lightmode = true,
      indentexpr = nil,
      ignore_filetype = {},
    })
  end
}
