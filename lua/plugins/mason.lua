return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua stuff
      "lua-language-server",
      "stylua",

      -- web dev stuff
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      -- "deno",
      "prettier",

      "angular-language-server",
      "prisma-language-server",
      "graphql-language-service-cli",
      "json-lsp",
      "sqlls",

      "biome",
    },
  },
}
