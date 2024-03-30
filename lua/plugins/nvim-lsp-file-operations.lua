return {
  {
    "antosha417/nvim-lsp-file-operations",
    enabled = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-tree.lua",
    },
    config = function()
      require("lsp-file-operations").setup({
        debug = false,
      })
    end,
  },
}
