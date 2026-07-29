return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rubocop = { enabled = false },
      ruby_lsp = {
        mason = false,
        cmd = { vim.fn.expand("~/.local/share/mise/shims/ruby-lsp") },
      },
      sorbet = {
        mason = false,
        cmd = { vim.fn.expand("~/.local/share/mise/shims/srb"), "tc", "--lsp" },
        on_attach = function(client)
          client.server_capabilities.completionProvider = nil
          client.server_capabilities.hoverProvider = nil
          client.server_capabilities.documentSymbolProvider = nil
        end,
      },
    },
  },
}
