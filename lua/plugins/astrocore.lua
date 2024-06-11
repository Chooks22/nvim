-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["<leader>tt"] = { "<cmd>ToggleTerm<cr>", desc = "ToggleTerm float" },
        ["<leader>pr"] = { "<cmd>AstroReload<cr>", desc = "Astro reload" },
      },
      t = {
        ["<leader>tt"] = { "<cmd>ToggleTerm<cr>", desc = "ToggleTerm float" },
      },
    },
    autocmds = {
      formatters = {
        {
          event = "BufWritePre",
          desc = "Eslint Format",
          pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.svelte", "*.astro" },
          command = "silent! EslintFixAll",
        },
        {
          event = "BufWritePre",
          desc = "Tailwind Format",
          pattern = { "*.jsx", "*.tsx", "*.svelte", "*.astro", "*.css" },
          callback = function() require("tailwind-sorter").sort(0) end,
        },
      },
    },
  },
}
