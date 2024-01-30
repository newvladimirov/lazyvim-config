return {
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
    dependencies = { "marilari88/neotest-vitest", "nvim-neotest/neotest-jest", "nvim-treesitter/nvim-treesitter" },
    opts = {
      adapters = {
        "neotest-plenary",
        "neotest-jest",
        "neotest-vitest",
      },
    },
  },
}
