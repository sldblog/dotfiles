return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      rubocop = {
        command = vim.fn.expand("~/.local/share/mise/shims/rubocop"),
      },
    },
  },
}
