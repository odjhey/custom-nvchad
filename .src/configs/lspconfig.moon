on_attach = require"plugins.configs.lspconfig".on_attach
capabilities = require"plugins.configs.lspconfig".capabilities

lspconfig = require "lspconfig"

servers = {
  "gopls"
  "lua_ls"
  "tsserver"
  "pylsp"
  "fennel-ls"
  "gdscript"
}

-- inform lspconfig about fennel-ls
-- make sure to install `fennel-ls` as it is not supported by mason
-- https://git.sr.ht/~xerool/fennel-ls
require"lspconfig.configs"["fennel-ls"] = {
  default_config: {
    cmd: {"/usr/local/bin/fennel-ls"}
    filetypes: {"fennel"}
    root_dir: (dir) -> lspconfig.util.find_git_ancestor dir
    settings: {}
  }
}

for _, lsp in ipairs servers
  lspconfig[lsp].setup {
    on_attach: on_attach
    capabilities: capabilities
  }
