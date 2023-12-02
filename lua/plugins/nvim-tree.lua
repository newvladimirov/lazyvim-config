return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    git = {
      enable = true,
    },
    filters = {
      dotfiles = false,
      exclude = {},
    },
    view = {
      width = 50,
    },
    update_focused_file = {
      enable = false,
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
