return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup {
      options = {
        mode = 'buffers',
        numbers = "ordinal",
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "Neotree",
            text = "File Explorer",
            text_align = "center",
            highlight = "Directory",
            separator = true
          }
        },
      },
    }
  end
}
