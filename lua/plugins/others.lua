return {
  { "rafamadriz/friendly-snippets" },
  { "alexghergh/nvim-tmux-navigation", opts = {}, lazy = false },
  -- {
  --   "windwp/nvim-autopairs",
  --   event = "InsertEnter",
  --   config = function()
  --     require("nvim-autopairs").setup()
  --   end,
  -- },
  -- { "vimpostor/vim-tpipeline", opts = {} },
  -- { "fgheng/winbar.nvim", opts = { enabled = true }, event = "BufEnter" },
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
