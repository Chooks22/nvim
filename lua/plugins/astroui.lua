-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`

---@type LazySpec
return {
  {
    "Chooks22/ancient-onedark.nvim",
    lazy = true,
    opts = {
      style = "violet",
    },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "ancient_onedark",
    },
  },
}
