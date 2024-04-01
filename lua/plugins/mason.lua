-- Customize Mason plugins

---@type LazySpec
return {
  {
    "williamboman/mason.nvim",
    opts = {
      registries = {
        "github:Chooks22/mason-registry",
        "github:mason-org/mason-registry",
      },
    },
  },
}
