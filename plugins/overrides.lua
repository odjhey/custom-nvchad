local M = {
  treesitter = {
    ensure_installed = {
      "vim",
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "go",
      "java",
      "python",
      "fennel",
      "gdscript"
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
      "jdtls",
      "python-lsp-server",
      "yapf"
    }
  },
  autopairs = {
    disable_filetype = {
      "clojure",
      "lisp",
      "fennel"
    }
  }
}
return M
