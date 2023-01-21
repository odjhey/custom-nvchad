export vim
overrides = require "custom.plugins.overrides"

{
  "tpope/vim-surround": { }
  "fatih/vim-go": { }
  "iamcco/markdown-preview.nvim": { }
  "rest-nvim/rest.nvim": { }

  -- some formatting
  "jose-elias-alvarez/null-ls.nvim":
    after: "nvim-lspconfig"
    config: ->
      present, null_ls = pcall require, "null-ls"
      if present
        sources = {
          -- must install https://github.com/uncrustify/uncrustify
          null_ls.builtins.formatting.uncrustify
        }
        null_ls.setup
          debug: true
          sources: sources

  -- as suggested by lsp
  "mfussenegger/nvim-jdtls":
    ft: {'java'}
    config: ->
      home = os.getenv "HOME"
      -- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
      -- local workspace_dir = home .. '/.jdtls/' .. project_name

      config =
        cmd:
          { home .. "/.local/share/nvim/mason/bin/jdtls" }
        root_dir: vim.fs.dirname vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward: true })[1]
        on_attach: (client, bufnr) ->
          utils = require 'core.utils'
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
          utils.load_mappings("lspconfig", { buffer: bufnr })
          if client.server_capabilities.signatureHelpProvider
            require("nvchad_ui.signature").setup(client)

      require'jdtls'.start_or_attach config

  -- use this till we get a teal lsp 
  "teal-language/vim-teal": { }
  "leafo/moonscript-vim": { }

  -- override plugin configs
  "neovim/nvim-lspconfig":
    config: ->
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"

  "nvim-treesitter/nvim-treesitter":
    override_options: overrides.treesitter

  "williamboman/mason.nvim":
    override_options: overrides.mason
}
