-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`

---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      formatting = {
        format_on_save = {
          ignore_filetypes = {
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
            "svelte",
          },
        },
      },
      servers = { "nginx_language_server" },
      ---@diagnostic disable-next-line: missing-fields
      config = {
        nginx_language_server = {
          cmd = { "nginx-language-server" },
          filetypes = { "nginx" },
          root_dir = function(path)
            return require("lspconfig.util").root_pattern("nginx", "conf.d", "nginx.conf")(path)
          end,
        },
        jsonls = {
          on_new_config = function(config)
            config.settings.json.schemas = config.settings.json.schemas or {}
            vim.list_extend(config.settings.json.schemas, require("schemastore").json.schemas())
          end,
          settings = {
            ---@diagnostic disable-next-line: missing-fields
            json = {
              validate = {
                enable = true,
              },
            },
          },
        },
        yamlls = {
          on_new_config = function(config)
            config.settings.yaml.schemas =
              vim.tbl_deep_extend("force", config.settings.yaml.schemas or {}, require("schemastore").yaml.schemas())
          end,
          ---@diagnostic disable-next-line: missing-fields
          settings = {
            ---@diagnostic disable-next-line: missing-fields
            yaml = {
              schemaStore = {
                enable = false,
                url = "",
              },
            },
          },
        },
        ---@diagnostic disable-next-line: missing-fields
        vtsls = {
          on_attach = function()
            local vtsls = require "vtsls.commands"
            vim.keymap.set("n", "<leader>lo", vtsls.organize_imports, { desc = "Organize imports" })
            vim.keymap.set("n", "<leader>lA", vtsls.fix_all, { desc = "Fix all" })
            vim.keymap.set("n", "<leader>pR", vtsls.restart_tsserver, { desc = "Restart tsserver" })
            vim.keymap.set("n", "gD", vtsls.goto_source_definition, { desc = "Go to source definition" })
          end,
        },
      },
    },
  },
  "b0o/SchemaStore.nvim",
  {
    "yioneko/nvim-vtsls",
    lazy = true,
  },
}
