local M = {
  treesetter = {
    ensure_installed = {
      "vim",
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "go",
      "java"
    }
  },
  mason = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "gopls",
      "jdtls"
    }
  }
}
return M
