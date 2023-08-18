null_ls = require "null-ls"

b = null_ls.builtins

null_ls.setup {
  debug: true
  sources: {
    b.formatting.stylua
  }
}
