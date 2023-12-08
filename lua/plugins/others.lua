return {
  { "rafamadriz/friendly-snippets", lazy = true },
  { "alexghergh/nvim-tmux-navigation", opts = {}, lazy = false },
  -- {
  --   "windwp/nvim-autopairs",
  --   event = "insertenter",
  --   config = function()
  --     require("nvim-autopairs").setup()
  --   end,
  -- },
  -- { "vimpostor/vim-tpipeline", opts = {} },

  -- this plugin is useful for "add missing imports in typescript, but breaks autocompletion for component props in react"
  -- {
  --   "jose-elias-alvarez/typescript.nvim",
  --   config = function()
  --     require("typescript").setup({})
  --   end,
  --   lazy = false,
  --   opts = {},
  -- },
  { "theprimeagen/harpoon", dependencies = { "nvim-lua/plenary.nvim" } },
  {
    "l3mon4d3/luasnip",
    enabled = false,
    keys = function()
      return {}
    end,
  },
  {
    "chentoast/marks.nvim",
    opts = {},
    config = function()
      require("marks").setup()
      vim.opt.signcolumn = "yes:3"
    end,
  },
  {
    "mbbill/undotree",
    config = function()
      vim.g.undotree_windowlayout = 2
      vim.g.undotree_setfocuswhentoggle = 1
      vim.g.undotree_splitwidth = 55
    end,
  },
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
  { "nvim-treesitter/nvim-treesitter-context", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  -- { "ggandor/flit.nvim", enabled = false },
  { "ggandor/leap.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
}
