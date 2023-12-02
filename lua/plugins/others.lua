return {
  { "alexghergh/nvim-tmux-navigation", opts = {}, lazy = false },
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  { "ojroques/nvim-bufdel", opts = {} },
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },

  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "ggandor/flit.nvim", enabled = false },
}
