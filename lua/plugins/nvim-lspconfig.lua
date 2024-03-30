local util = require("lspconfig.util")
local configs = require("lspconfig.configs")

if not configs.ngtoolslsp then
  configs.ngtoolslsp = {
    default_config = {
      name = "ng-tools-lsp",
      filetypes = { "angular", "typescript" },
      cmd = {
        "tsx",
        "/Users/alexey.vladimirov/_sandbox/ng-tools-lsp/src/index.ts",
        "--stdio",
      },
    },
  }
end

local function find_in_table(tab, val)
  for index, item in ipairs(tab) do
    if item[1] == val then
      return index
    end
  end

  return nil
end

return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    local keys_to_remove = { "gr", "gd" }
    for _, key in ipairs(keys_to_remove) do
      local index = find_in_table(keys, key)
      if index ~= nil then
        table.remove(keys, index)
      end
    end
  end,
  ---@class PluginLspOpts
  opts = {
    inlay_hints = { enabled = true },
    servers = {
      angularls = {
        root_dir = util.root_pattern("angular.json", "project.json"),
      },
      ngtoolslsp = {
        root_dir = util.root_pattern("angular.json", "project.json"),
        -- root_dir = vim.fn.getcwd(),
      },
    },
  },
}
