local overrides = require("custom.configs.overrides")
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          return require("custom.configs.null-ls")
        end
      }
    },
    config = function()
      require("plugins.configs.lspconfig")
      return require("custom.configs.lspconfig")
    end
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree
  },
  {
    "windwp/nvim-autopairs",
    opts = overrides.autopairs
  },
  {
    "tpope/vim-surround",
    lazy = false
  },
  {
    "iamcco/markdown-preview.nvim"
  },
  {
    "leafo/moonscript-vim",
    lazy = false
  }
}
