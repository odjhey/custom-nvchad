M =
  treesetter:
    ensure_installed: {
      "vim"
      "lua"
      "html"
      "css"
      "javascript"
      "typescript"
      "go"
      "java"
      "python"
      "fennel"
    }
  mason:
    ensure_installed: {
    -- lua stuff
    "lua-language-server"
    "stylua"

    -- web dev stuff
    "css-lsp"
    "html-lsp"
    "typescript-language-server"

    "gopls"

    -- java
    "jdtls"

    -- python stuff
    "python-lsp-server"
    "yapf"
  }

M



