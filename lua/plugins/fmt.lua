---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      formatting = {
        format_on_save = {
          ignore_filetypes = {
            "dockerfile",
          },
        },
      },
      autocmds = {
        tailwind_sort_on_save = {
          cond = function(client) return vim.fn.exists ":TailwindSort" > 0 and client.name == "tailwindcss" end,
          {
            event = "BufWritePost",
            desc = "Sort tailwind classes",
            callback = function()
              pcall(function() require("tailwind-tools.lsp").sort_classes(true) end)
            end,
          },
        },
      },
      ---@diagnostic disable: missing-fields
      config = {
        svelte = {
          settings = {
            svelte = {
              plugin = {
                svelte = {
                  format = {
                    enable = false,
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      server = {
        settings = {
          experimental = {
            classRegex = {
              "tw`([^`]*)",
              'tw="([^"]*)',
              'tw={"([^"}]*)',
              "tw\\.\\w+`([^`]*)",
              "tw\\(.*?\\)`([^`]*)",
              { "clsx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
              { "classnames\\(([^)]*)\\)", "'([^']*)'" },
              { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
              { "cn\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
              { "tv\\({([^]*)}\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
            },
          },
        },
      },
      document_color = {
        kind = "background",
      },
    },
  },
}
