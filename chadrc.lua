local M = {
  plugins = require("custom.plugins"),
  mappings = {
    user = {
      n = {
        ["<left>"] = {
          "<cmd> cprev <cr>",
          ""
        },
        ["<right>"] = {
          "<cmd> cnext <cr>",
          ""
        },
        ["<up>"] = {
          "<cmd> lnext <cr>",
          ""
        },
        ["<down>"] = {
          "<cmd> lprev <cr>",
          ""
        },
        ["<TAB>"] = {
          "<nop>",
          "for now, until i find a better usecase"
        },
        ["<TAB>n"] = {
          "<cmd> tabnext <cr>",
          "next tab"
        },
        ["<Tab>c"] = {
          "<cmd> tab split <cr>",
          "goto prev tab"
        },
        ["<Tab>x"] = {
          "<cmd> tabclose <cr>",
          "goto prev tab"
        },
        ["<leader><CR>"] = {
          "<C-^>",
          ""
        },
        ["<leader>n"] = {
          function()
            return require("nvchad_ui.tabufline").tabuflineNext()
          end,
          "goto next buffer"
        },
        ["<leader>h"] = {
          "<nop>",
          ""
        },
        ["<leader>v"] = {
          "<nop>",
          ""
        }
      }
    }
  }
}
return M
