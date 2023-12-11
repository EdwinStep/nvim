return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "thenbe/neotest-playwright"
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-playwright")
      },
    })
    vim.keymap.set('n', '<leader>tr', require("neotest").run.run())
  end
}
