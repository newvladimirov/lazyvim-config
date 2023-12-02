local util = require("lspconfig.util")

return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        angularls = {
          root_dir = util.root_pattern("angular.json", "project.json"),
        },
      },
    },
  },
  { "alexghergh/nvim-tmux-navigation", opts = {}, lazy = false },
  {
    "jose-elias-alvarez/typescript.nvim",
    config = function()
      require("typescript").setup({})
    end,
    lazy = false,
    opts = {},
  },
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  { "ojroques/nvim-bufdel", opts = {} },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp_window = require("cmp.config.window")
      local cmp = require("cmp")

      opts.window = {
        completion = cmp_window.bordered(),
        documentation = cmp_window.bordered(),
      }

      opts.mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      })
    end,
  },
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
}
