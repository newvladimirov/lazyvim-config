-- lazy.nvim spec
local M = {
  "nvim-neorg/neorg",
  ft = "norg",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-textobjects",
    "luarocks.nvim",
  },
  lazy = false,
  cmd = "Neorg",
}

local modules = {
  ["core.defaults"] = {},
  ["core.mode"] = {},
  ["core.autocommands"] = {},
  ["core.highlights"] = {},
  ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
  ["core.qol.todo_items"] = {},
  ["core.integrations.nvim-cmp"] = {},
  ["core.integrations.treesitter"] = { config = { configure_parsers = true, install_parsers = true } },
  ["core.concealer"] = {
    config = {
      icon_preset = "varied",
      code_block = {
        content_only = true,
        conceal = true,
        highlight = "CursorLine",
      },
      icons = {},
    },
  },
  ["core.keybinds"] = {
    -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
    config = {
      default_keybinds = true,
      neorg_leader = "\\",
    },
  },
  ["core.dirman"] = {
    config = {
      workspaces = {
        Personal = "~/_neorg_notes/personal",
        Work = "~/_neorg_notes/work",
      },
      default_workspace = "Personal",
    },
  },
}

M.opts = {
  load = modules,
}

return M
