return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua stuff
      "prettier",
      "lua-language-server",
      "stylua",

      -- web dev stuff
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "angular-language-server",
      "prisma-language-server",
      "graphql-language-service-cli",
      "json-lsp",
      "sqlls",
      -- "biome",
    },
  },
}
