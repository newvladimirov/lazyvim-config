return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    textobjects = {
      move = {
        enable = true,
        -- goto_next_start = {
        --   ["]f"] = "@function.outer",
        --   ["]c"] = "@class.outer",
        -- },
        -- goto_next_end = {
        --   ["]F"] = "@function.outer",
        --   ["]C"] = "@class.outer",
        -- },
        -- goto_previous_start = {
        --   ["[f"] = "@function.outer",
        --   ["[c"] = "@class.outer",
        -- },
        -- goto_previous_end = {
        --   ["[F"] = "@function.outer",
        --   ["[C"] = "@class.outer",
        -- },
        goto_next = {
          ["]a"] = "@parameter.outer",
          ["]A"] = "@parameter.inner",
          ["]c"] = "@call.inner",
        },
        goto_previous = {
          ["[a"] = "@parameter.outer",
          ["[A"] = "@parameter.inner",
          ["[c"] = "@call.inner",
        },
      },
      select = {
        keymaps = {
          -- ["aa"] = "@parameter.outer",
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>a"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>A"] = "@parameter.inner",
        },
      },
    },
    ensure_installed = {
      "bash",
      "css",
      "dockerfile",
      "gitignore",
      "graphql",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "prisma",
      "python",
      "regex",
      "sql",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      "norg",
    },
  },
}
