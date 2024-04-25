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
      {
        "<leader>fb <CR>",
        "<cmd> Telescope buffers",
        desc = "Find buffer",
      },
    },
  },
  keys = {
    { "<leader>/", vim.NIL },
    { "<leader>gr", vim.NIL },
  },
  opts = {
    defaults = {
      initial_mode = "normal",
      mappings = {
        n = {
          ["t"] = require("trouble.providers.telescope").open_with_trouble,
          ["C-t"] = require("trouble.providers.telescope").open_with_trouble,
        },
      },
    },
  },
}
