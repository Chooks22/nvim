-- Customize None-ls sources

---@type LazySpec
return {
  "laytan/tailwind-sorter.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
  },
  build = "cd formatter && npm ci && npm run build",
  config = true,
}
