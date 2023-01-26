local overrides = require("custom.plugins.overrides")
return {
  ["tpope/vim-surround"] = { },
  ["fatih/vim-go"] = { },
  ["iamcco/markdown-preview.nvim"] = { },
  ["rest-nvim/rest.nvim"] = { },
  ["hkupty/iron.nvim"] = {
    config = function()
      local present, iron = pcall(require, "iron.core")
      if present then
        return iron.setup({
          config = { },
          keymaps = {
            send_motion = "<space>sc",
            visual_send = "<space>sc"
          }
        })
      end
    end
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      local present, null_ls = pcall(require, "null-ls")
      if present then
        local sources = {
          null_ls.builtins.formatting.uncrustify,
          null_ls.builtins.formatting.yapf
        }
        return null_ls.setup({
          debug = true,
          sources = sources
        })
      end
    end
  },
  ["mfussenegger/nvim-jdtls"] = {
    ft = {
      'java'
    },
    config = function()
      local home = os.getenv("HOME")
      local config = {
        cmd = {
          home .. "/.local/share/nvim/mason/bin/jdtls"
        },
        root_dir = vim.fs.dirname(vim.fs.find({
          '.gradlew',
          '.git',
          'mvnw'
        }, {
          upward = true
        })[1]),
        on_attach = function(client, bufnr)
          local utils = require('core.utils')
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
          utils.load_mappings("lspconfig", {
            buffer = bufnr
          })
          if client.server_capabilities.signatureHelpProvider then
            return require("nvchad_ui.signature").setup(client)
          end
        end
      }
      return require('jdtls').start_or_attach(config)
    end
  },
  ["teal-language/vim-teal"] = { },
  ["leafo/moonscript-vim"] = { },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require("plugins.configs.lspconfig")
      return require("custom.plugins.lspconfig")
    end
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter
  },
  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason
  },
  ["folke/trouble.nvim"] = {
    config = function()
      return require("trouble").setup
    end
  }
}
