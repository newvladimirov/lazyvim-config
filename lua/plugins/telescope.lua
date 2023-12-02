return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-live-grep-args.nvim",
    config = function()
      require("telescope").load_extension("live_grep_args")
    end,
    keys = {
      {
        "<leader>fw",
        "<cmd> Telescope live_grep_args <CR>",
        desc = "Telescope live grep",
      },
    },
  },

  opts = {
    defaults = {
      mappings = {
        n = {
          ["t"] = require("trouble.providers.telescope").open_with_trouble,
          -- ["<leader>/"] = false, -- doesnt work
        },
      },
    },
  },
}
