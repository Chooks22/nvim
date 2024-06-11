-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    "axelvc/template-string.nvim",
    event = "User AstroFile",
    opts = {},
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "User AstroFile",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "onsails/lspkind-nvim",
        lazy = true,
      },
    },
    opts = function(_, opts)
      local cmp = require "cmp"

      opts.formatting = {
        format = require("lspkind").cmp_format {
          before = require("tailwind-tools.cmp").lspkind_format,
        },
      }

      -- modify the sources part of the options table
      opts.sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
      }
    end,
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    lazy = true,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    ---@type TailwindTools.Option
    opts = {
      document_color = {
        kind = "background",
      },
    },
  },
}
