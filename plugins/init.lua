local overrides = require("custom.plugins.overrides")
return {
  ["tpope/vim-surround"] = { },
  ["fatih/vim-go"] = { },
  ["iamcco/markdown-preview.nvim"] = { },
  ["rest-nvim/rest.nvim"] = { },
  ["hkupty/iron.nvim"] = {
    config = function()
      local utils = require("custom.plugins.utils")
      return utils.setup_if_exist("iron.core", {
        config = { },
        keymaps = {
          send_motion = "<space>ee",
          visual_send = "<space>ee"
        }
      })
    end
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      local present, null_ls = pcall(require, "null-ls")
      if present then
        local sources = {
          null_ls.builtins.formatting.uncrustify,
          null_ls.builtins.formatting.yapf,
          null_ls.builtins.formatting.fnlfmt
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
      "java"
    },
    config = function()
      local home = os.getenv("HOME")
      local config = {
        cmd = {
          home .. "/.local/share/nvim/mason/bin/jdtls"
        },
        root_dir = vim.fs.dirname(vim.fs.find({
          ".gradlew",
          ".git",
          "mvnw"
        }, {
          upward = true
        })[1]),
        on_attach = function(client, bufnr)
          local utils = require("core.utils")
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
      return require("jdtls").start_or_attach(config)
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
  ["windwp/nvim-autopairs"] = {
    override_options = overrides.autopairs
  },
  ["folke/trouble.nvim"] = {
    config = function()
      local utils = require("custom.plugins.utils")
      return utils.setup_if_exist("trouble")
    end
  },
  ["echasnovski/mini.indentscope"] = {
    config = function()
      local utils = require("custom.plugins.utils")
      return utils.setup_if_exist("mini.indentscope")
    end
  },
  ["echasnovski/mini.move"] = {
    config = function()
      local utils = require("custom.plugins.utils")
      return utils.setup_if_exist("mini.move", {
        mappings = {
          left = "<Left>",
          right = "<Right>",
          down = "<Down>",
          up = "<Up>",
          line_left = "",
          line_right = "",
          line_down = "",
          line_up = ""
        }
      })
    end
  },
  ["echasnovski/mini.ai"] = {
    config = function()
      local utils = require("custom.plugins.utils")
      return utils.setup_if_exist("mini.ai")
    end
  }
}
