return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "nvim-telescope/telescope.nvim", -- optional
    "sindrets/diffview.nvim", -- optional
    "ibhagwan/fzf-lua", -- optional
    "sindrets/diffview.nvim",
  },
  event = "VeryLazy",
  opts = {
    integrations = {
      diffview = true,
    },
  },
}
