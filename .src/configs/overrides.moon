M =
  treesitter:
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
      "gdscript"
      "graphql"
      "prisma"
      "terraform"
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

    "prisma-language-server"

    "terraform-ls"

    "fsautocomplete"
  }

  nvimtree:
    git:
      enable: true
    renderer:
      highlight_git: true
      icons:
        show:
          git: true

  autopairs:
    disable_filetype: {
      "clojure"
      "lisp"
      "fennel"
    }
M



