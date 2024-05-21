local util = require("lspconfig.util")

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
    local keys_to_remove = { "gr", "gd", "K" }
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
      tsserver = {
        root_dir = util.root_pattern("tsconfig.base.json"),
      },
      eslint = {
        root_dir = util.root_pattern(".eslintrc.json"),
      },
    },
    setup = {
      angularls = function(_, opts)
        local angularls_path = require("mason-registry").get_package("angular-language-server"):get_install_path()
        local cmd = {
          "ngserver",
          "--stdio",
          "--forceStrictTemplates",
          "--includeAutomaticOptionalChainCompletions",
          "--tsProbeLocations",
          table.concat({
            angularls_path,
            vim.uv.cwd(),
          }, ","),
          "--ngProbeLocations",
          table.concat({
            angularls_path .. "/node_modules/@angular/language-server",
            vim.uv.cwd(),
          }, ","),
        }

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

        require("lspconfig").angularls.setup({
          cmd = cmd,
          fileTypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
          root_dir = util.root_pattern("angular.json", "nx.json"),
          capabilities = capabilities,
          on_new_config = function(new_config, new_root_dir)
            new_config.cmd = cmd
          end,
        })
        return true
      end,
    },
  },
}
