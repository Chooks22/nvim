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
  },
}
