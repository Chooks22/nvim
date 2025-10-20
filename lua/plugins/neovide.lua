vim.keymap.set(
  { "n", "v", "s", "x", "o", "i", "l", "c", "t" },
  "<C-S-v>",
  function() vim.api.nvim_paste(vim.fn.getreg "+", true, -1) end,
  { noremap = true, silent = true }
)

return {}
