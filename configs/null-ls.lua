local null_ls = require("null-ls")
local b = null_ls.builtins
return null_ls.setup({
  debug = true,
  sources = {
    b.formatting.stylua
  }
})
