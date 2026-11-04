return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      rubocop = {
        command = vim.fn.expand("~/.local/share/mise/shims/bundle"),
        prepend_args = { "exec", "rubocop" },
      },
    },
  },
}
