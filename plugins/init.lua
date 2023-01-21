local overrides = require "custom.plugins.overrides"

return {
  ["tpope/vim-surround"] = { },
  ["fatih/vim-go"] = { },
  ["iamcco/markdown-preview.nvim"] = { },
  ["rest-nvim/rest.nvim"] = { },

  -- some formatting
   ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      local present, null_ls = pcall(require, "null-ls")

      if not present then
        return
      end

      local sources = {
        -- must install https://github.com/uncrustify/uncrustify
        null_ls.builtins.formatting.uncrustify
      }

      null_ls.setup {
        debug = true,
        sources = sources,
      }
    end,
   },

  -- as suggested by lsp
  ["mfussenegger/nvim-jdtls"] = {
    ft = {'java'},
    config = function()
      local home = os.getenv("HOME")
      -- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
      -- local workspace_dir = home .. '/.jdtls/' .. project_name

      local config = {
        cmd = {
           home .. "/.local/share/nvim/mason/bin/jdtls"
        },
        root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),

        on_attach = function(client, bufnr)
          local utils = require 'core.utils'
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false

          utils.load_mappings("lspconfig", { buffer = bufnr })

          if client.server_capabilities.signatureHelpProvider then
            require("nvchad_ui.signature").setup(client)
          end
        end
      }
      require('jdtls').start_or_attach(config)
    end
  },

  -- use this till we get a teal lsp 
  ["teal-language/vim-teal"] = { },
  ["leafo/moonscript-vim"] = { },

  -- override plugin configs
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
