local overrides = require "custom.plugins.overrides"

return {
   ["tpope/vim-surround"] = { },
   ["fatih/vim-go"] = { },
   ["iamcco/markdown-preview.nvim"] = { },
   ["rest-nvim/rest.nvim"] = { },

   -- overrde plugin configs
   ["neovim/nvim-lspconfig"] = {
     config = function()
       require "plugins.configs.lspconfig"
       require "custom.plugins.lspconfig"
     end,
   },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },
}
