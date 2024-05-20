return {
  {
    "FabijanZulj/blame.nvim",
    config = function()
      require("blame").setup()
    end,
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  { "rafamadriz/friendly-snippets", lazy = true },
  { "alexghergh/nvim-tmux-navigation", opts = {}, lazy = false },
  -- { "styled-components/vim-styled-components", ots = {}, lazy = false },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
  },
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
  {
    "theprimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon").setup({})
    end,
  },
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
      vim.opt.signcolumn = "yes:1"
    end,
  },
  {
    "mbbill/undotree",
    config = function()
      vim.g.undotree_windowlayout = 2
      vim.g.undotree_setfocuswhentoggle = 1
      vim.g.undotree_splitwidth = 155
    end,
  },
  { "norcalli/nvim-colorizer.lua", opts = {} },
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
    "preservim/vim-markdown",
    enabled = false,
    opts = {},
    lazy = false,
    config = function() end,
  },

  -- return {
  --   "aznhe21/actions-preview.nvim",
  -- },
  {
    "folke/twilight.nvim", -- dimms the background of the code that is not in focus
    enabled = false,
    opts = {
      dimming = {
        alpha = 0.85, -- amount of dimming
        -- we try to get the foreground from the highlight groups or fallback color
        -- color = { "Normal", "#ffffff" },
        term_bg = "#000000", -- if guibg=NONE, this will be used to calculate text color
        inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
      },
      context = 10, -- amount of lines we will try to show around the current line
      treesitter = true, -- use treesitter when available for the filetype
      -- treesitter is used to automatically expand the visible text,
      -- but you can further control the types of nodes that should always be fully expanded
      expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
        "function",
        "method",
        "table",
        "if_statement",
      },
      exclude = {}, -- exclude these filetypes     -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  { "nvim-treesitter/nvim-treesitter-context", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  -- { "ggandor/flit.nvim", enabled = false },
  { "ggandor/leap.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false },
}
