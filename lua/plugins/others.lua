return {
  { "rafamadriz/friendly-snippets", lazy = true },
  { "alexghergh/nvim-tmux-navigation", opts = {}, lazy = false },
  -- {
  --   "windwp/nvim-autopairs",
  --   event = "InsertEnter",
  --   config = function()
  --     require("nvim-autopairs").setup()
  --   end,
  -- },
  -- { "vimpostor/vim-tpipeline", opts = {} },

  -- This plugin is useful for "Add missing imports in typescript, but breaks autocompletion for component props in React"
  -- {
  --   "jose-elias-alvarez/typescript.nvim",
  --   config = function()
  --     require("typescript").setup({})
  --   end,
  --   lazy = false,
  --   opts = {},
  -- },

  {
    "mini.comment",
    opts = {
      mappings = {
        comment_line = "<leader>/",
        comment_visual = "<leader>/",
        textobject = "<leader>/",
      },
    },
  },

  {
    "folke/trouble.nvim",
    opts = {
      use_diagnostic_signs = true,
      cycle_results = false,
    },
  },

  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  -- { "ggandor/flit.nvim", enabled = false },
  { "ggandor/leap.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
}
