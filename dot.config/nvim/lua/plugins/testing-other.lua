return {
  "rgroli/other.nvim",
  cmd = { "Other", "OtherSplit", "OtherVSplit" },
  keys = {
    { "<leader>tg", "<cmd>Other<cr>", desc = "Alternate (test ↔ file)" },
    { "<leader>tG", "<cmd>OtherVSplit<cr>", desc = "Alternate VSplit (test ↔ file)" },
  },
}
