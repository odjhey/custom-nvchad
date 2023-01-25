lspconfig = require "lspconfig"
on_attach = require"plugins.configs.lspconfig".on_attach
capabilities = require"plugins.configs.lspconfig".capabilities

servers = {
  "gopls"
  "sumneko_lua"
  "tsserver",
  "pylsp"
}

for _, lsp in ipairs servers
  lspconfig[lsp].setup {
    on_attach: on_attach
    capabilities: capabilities
  }
