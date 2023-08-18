overrides = require "custom.configs.overrides"

{
  { "neovim/nvim-lspconfig"
    dependencies: {
      {
        "jose-elias-alvarez/null-ls.nvim"
        config: ->
          require "custom.configs.null-ls"
      }
    }
    config: ->
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
  }
  {
    "williamboman/mason.nvim"
    opts:
      overrides.mason
  }
  {
    "nvim-treesitter/nvim-treesitter"
    opts:
      overrides.treesitter
  }
  {
    "nvim-tree/nvim-tree.lua"
    opts:
      overrides.nvimtree
  }
}
