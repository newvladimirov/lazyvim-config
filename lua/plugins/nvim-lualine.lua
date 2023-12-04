local Util = require("lazyvim.util")

local function hello()
  return [[ ]]
end

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    local icons = require("lazyvim.config").icons
    return {
      options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
      -- tabline = {
      --   lualine_a = {
      --     {
      --       "buffers",
      --       separator = { left = "", right = "" },
      --       right_padding = 2,
      --       symbols = { alternate_file = "" },
      --     },
      --   },
      -- },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {},
        lualine_c = {
          Util.lualine.root_dir(),
          { Util.lualine.pretty_path() },

          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
        },
        lualine_x = {
                    -- stylua: ignore
          {
            function() return require("noice").api.status.mode.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
            color = Util.ui.fg("Constant"),
          },
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = Util.ui.fg("Debug"),
          },
          { "branch" },
        },
        lualine_y = {

          {
            function()
              return require("noice").api.status.command.get()
            end,
            cond = function()
              return package.loaded["noice"] and require("noice").api.status.command.has()
            end,
            color = Util.ui.fg("Statement"),
          },
          { "location", padding = { left = 1, right = 1 } },
        },
        lualine_z = {
          { "progress", separator = " ", padding = { left = 1, right = 1 } },
        },
      },
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
