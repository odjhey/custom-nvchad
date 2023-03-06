local lspconfig = require("lspconfig")
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local servers = {
  "gopls",
  "lua_ls",
  "tsserver",
  "pylsp",
  "fennel-ls",
  "gdscript"
}
require("lspconfig.configs")["fennel-ls"] = {
  default_config = {
    cmd = {
      "/usr/local/bin/fennel-ls"
    },
    filetypes = {
      "fennel"
    },
    root_dir = function(dir)
      return lspconfig.util.find_git_ancestor(dir)
    end,
    settings = { }
  }
}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities
  })
end
