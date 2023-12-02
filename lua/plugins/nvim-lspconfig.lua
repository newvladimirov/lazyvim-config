local util = require("lspconfig.util")

return {
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
}
