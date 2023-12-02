return {
  "akinsho/bufferline.nvim",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        themable = false,
        always_show_bufferline = true,
        separator_style = "thick",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            separator = true,
            padding = 1,
          },
        },
        {
          hover = true,
          reveal = { "close" },
        },
        diagnostics = "nvim_lsp",
        indicator = {
          icon = "  ", -- this should be omitted if indicator style is not 'icon'
          style = "icon",
        },
        --        separator_style = "slope"
      },
    })
  end,
}
