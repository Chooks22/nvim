if not vim.g.neovide then return {} end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        guifont = "JetBrainsMonoNL Nerd Font:h12",
        linespace = -1,
      },
      g = {
        neovide_scale_factor = 1.0,
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_right = 0,
        neovide_padding_left = 0,
      },
    },
  },
}
