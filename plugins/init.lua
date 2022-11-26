return {
   ["tpope/vim-surround"] = { },
   ["fatih/vim-go"] = { },
   ["iamcco/markdown-preview.nvim"] = { },
   ["rest-nvim/rest.nvim"] = { },
   ["neovim/nvim-lspconfig"] = {
     config = function()
       require "plugins.configs.lspconfig"
       require "custom.plugins.lspconfig"
     end,
   },
}
