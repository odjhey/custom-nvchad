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
      "gdscript",
      "graphql",
      "prisma",
      "terraform"
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
      "yapf",
      "prisma-language-server",
      "terraform-ls"
    }
  },
  nvimtree = {
    git = {
      enable = true
    },
    renderer = {
      highlight_git = true,
      icons = {
        show = {
          git = true
        }
      }
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
