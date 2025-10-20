-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "javascript",
      "typescript",
      "svelte",
      "astro",
      "tsx",
      "markdown",
      "html",
      "css",
      "vue"
    },
  },
}
