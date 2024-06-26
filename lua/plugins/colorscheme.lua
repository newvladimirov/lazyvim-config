return {
  { "projekt0n/github-nvim-theme", priority = 1000, commit = "d832925e77cef27b16011a8dfd8835f49bdcd055" },
  {
    "sontungexpt/witch",
    priority = 1000,
    lazy = true,
    -- config = function(_, opts)
    --   require("witch").setup(opts)
    -- end,
  },
  { "projekt0n/github-nvim-theme", priority = 1000, commit = "4d5a4ce" },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false },
  {
    "EdenEast/nightfox.nvim",
    -- lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          -- Compiled file's destination location
          compile_path = vim.fn.stdpath("cache") .. "/nightfox",
          compile_file_suffix = "_compiled", -- Compiled file suffix
          transparent = false, -- Disable setting background
          terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
          dim_inactive = false, -- Non focused panes set to alternative background
          module_default = true, -- Default enable value for modules
          colorblind = {
            enable = false, -- Enable colorblind support
            simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
            severity = {
              protan = 0, -- Severity [0,1] for protan (red)
              deutan = 0, -- Severity [0,1] for deutan (green)
              tritan = 0, -- Severity [0,1] for tritan (blue)
            },
          },
          styles = { -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            preprocs = "NONE",
            attributes = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
          },
          inverse = { -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
          },
          modules = { -- List of various plugins and additional options
            -- ...
          },
        },
        palettes = {},
        specs = {},
        groups = {
          all = {
            ["@tag.attribute"] = { style = "NONE" },
          },
        },
      })
    end,
  },
}
