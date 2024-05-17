local bufferline = require("bufferline")

return {
  "akinsho/bufferline.nvim",
  event = "BufEnter",
  config = function()
    bufferline.setup({
      options = {
        -- style_preset = bufferline.style_preset.minimal,
        style_preset = bufferline.style_preset.no_italic,
        mode = "buffers",
        -- themable = true,
        -- always_show_bufferline = true,
        color_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,

        enforce_regular_tabs = false,
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
          hover = false,
        },
        diagnostics = "nvim_lsp",
        indicator = {
          icon = "  ", -- this should be omitted if indicator style is not 'icon'
          style = "icon",
        },
      },
    })
  end,
}
