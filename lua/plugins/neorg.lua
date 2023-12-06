-- lazy.nvim spec
local M = {
  "nvim-neorg/neorg",
  ft = "norg",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-cmp",
    "nvim-lua/plenary.nvim",
  },
  build = ":Neorg sync-parsers",
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
  ["core.concealer"] = { config = { icon_preset = "basic" } },
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
        Personal = "~/_neorg/personal",
        Work = "~/_neorg/work",
      },
    },
  },
}

M.opts = {
  load = modules,
}

return M
