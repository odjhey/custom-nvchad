-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
   user = function()
   end,
}

M.mappings = {
  user = {
    n = {
     ["<left>"]  = {"<cmd> cprev <cr>", ""},
     ["<right>"] = {"<cmd> cnext <cr>", ""},
     ["<up>"]    = {"<cmd> lnext <cr>", ""},
     ["<down>"]  = {"<cmd> lprev <cr>", ""},
     ["<TAB>"]   = { "<nop>", "for now, until i find a better usecase" },
     ["<TAB>n"]   = { "<cmd> tabnext <cr>", "next tab" },
     ["<Tab>c"] = { "<cmd> tab split <cr>", "goto prev tab" },
     ["<Tab>x"] = { "<cmd> tabclose <cr>", "goto prev tab" },
     ["<leader><CR>"] = { "<C-^>", "" },
     ["<leader>n"] = {
       function()
         require("nvchad_ui.tabufline").tabuflineNext()
       end,
       "goto next buffer",
      },
    }
  }
}

M.plugins = {
  user = require "custom.plugins",
}

return M
