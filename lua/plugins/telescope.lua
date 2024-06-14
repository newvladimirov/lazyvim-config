return {
  "nvim-telescope/telescope.nvim",
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
        "<leader>fb<CR>",
        "<cmd> Telescope buffers",
        desc = "Find buffer",
      },
      { "<leader>ff", LazyVim.pick("files", { cwd = false }), desc = "Find Files (cwd)" },
      { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
      { "<leader>fr", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
      { "<leader>fR", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
    },
  },
  keys = {
    { "<leader>/", vim.NIL },
    { "<leader>gr", vim.NIL },
  },
  opts = {
    defaults = {
      initial_mode = "normal",
      layout_strategy = "vertical",
      sorting_strategy = "ascending",
      layout_config = {
        vertical = {
          prompt_position = "top",
          mirror = true,
        },
      },
      path_display = {
        "filename_first",
      },
      find_files = {
        hidden = true,
      },
      mappings = {
        n = {
          ["t"] = require("trouble.sources.telescope").open,
          ["C-t"] = require("trouble.sources.telescope").open,
        },
      },
    },
  },
}
