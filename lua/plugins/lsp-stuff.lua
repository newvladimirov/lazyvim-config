-- disable lsp-inlayhints if that is nightly version, will remove when 0.10.0 is stable

return {
  -- {
  --   "lvimuser/lsp-inlayhints.nvim",
  --   ft = { "javascript", "javascriptreact", "json", "jsonc", "typescript", "typescriptreact", "svelte" },
  --   enabled = true,
  --   opts = {
  --     debug_mode = true,
  --   },
  --   config = function(_, options)
  --     vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
  --     vim.api.nvim_create_autocmd("LspAttach", {
  --       group = "LspAttach_inlayhints",
  --       callback = function(args)
  --         if not (args.data and args.data.client_id) then
  --           return
  --         end
  --
  --         local bufnr = args.buf
  --         local client = vim.lsp.get_client_by_id(args.data.client_id)
  --         require("lsp-inlayhints").on_attach(client, bufnr)
  --       end,
  --     })
  --     require("lsp-inlayhints").setup(options)
  --     -- define key map for toggle inlay hints: require('lsp-inlayhints').toggle()
  --     vim.api.nvim_set_keymap(
  --       "n",
  --       "<leader>uI",
  --       "<cmd>lua require('lsp-inlayhints').toggle()<CR>",
  --       { noremap = true, silent = true }
  --     )
  --   end,
  -- },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup({
        symbol_in_winbar = {
          enable = false,
        },
        lightbulb = {
          enable = false,
        },
      })
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      -- Please make sure you install markdown and markdown_inline parser
      { "nvim-treesitter/nvim-treesitter" },
    },
  },
  {
    -- Displaying references and definition infos upon functions like JB's IDEA.
    "VidocqH/lsp-lens.nvim",
    enabled = false,
    event = "BufRead",
    opts = {
      include_declaration = true, -- Reference include declaration
      sections = { -- Enable / Disable specific request
        definition = false,
        references = true,
        implementation = false,
      },
    },
    keys = {
      {
        -- LspLensToggle
        "<leader>uL",
        "<cmd>LspLensToggle<CR>",
        desc = "LSP Len Toggle",
      },
    },
  },
  {
    -- Dim the unused variables and functions using lsp and treesitter.
    "narutoxy/dim.lua",
    event = "BufRead",
    dependencies = { "nvim-treesitter/nvim-treesitter", "neovim/nvim-lspconfig" },
    config = true,
  },
}
