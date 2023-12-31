return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-live-grep-args.nvim",
    config = function()
      require("telescope").load_extension("live_grep_args")
      require("telescope").load_extension("harpoon")
    end,
    keys = {
      {
        "<leader>fw",
        "<cmd> Telescope live_grep_args <CR>",
        desc = "Telescope live grep",
      },
    },
  },
  keys = {
    { "<leader>/", vim.NIL },
    { "<leader>gr", vim.NIL },
  },
  opts = {
    defaults = {
      mappings = {
        n = {
          ["t"] = require("trouble.providers.telescope").open_with_trouble,
          ["C-t"] = require("trouble.providers.telescope").open_with_trouble,
        },
      },
    },
  },
}
