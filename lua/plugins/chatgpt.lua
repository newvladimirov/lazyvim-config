return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  enabled = false,
  config = function()
    require("chatgpt").setup({
      -- api_key_cmd = "echo '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'",
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
