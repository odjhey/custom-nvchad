-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
   user = function()
      vim.opt.clipboard = nil
   end,
}

M.mappings = {
  user = {
    n = {
     ["<left>"]  = {"<cmd> cprev <cr>", ""},
     ["<right>"] = {"<cmd> cnext <cr>", ""},
     ["<up>"]    = {"<cmd> lnext <cr>", ""},
     ["<down>"]  = {"<cmd> lprev <cr>", ""},
    }
  }
}

M.plugins = {
  user = require "custom.plugins",
}

return M
