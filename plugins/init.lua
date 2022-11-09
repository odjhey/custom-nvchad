return {
   ["tpope/vim-surround"] = { },
   ["fatih/vim-go"] = { },
   ["neovim/nvim-lspconfig"] = {
     config = function()
       require "plugins.configs.lspconfig"
       require "custom.plugins.lspconfig"
     end,
   },
}
