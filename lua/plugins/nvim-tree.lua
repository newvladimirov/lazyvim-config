return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    -- sync_root_with_cwd = true,
    -- respect_buf_cwd = true,

    git = {
      enable = true,
    },
    filters = {
      dotfiles = false,
      git_ignored = false,
      exclude = {},
    },
    view = {
      width = 45,
      adaptive_size = true,
    },
    update_focused_file = {
      enable = false,
      -- update_root = true,
    },
    renderer = {
      highlight_git = true,
      icons = {
        show = {
          git = true,
        },
      },
    },
  },
}
