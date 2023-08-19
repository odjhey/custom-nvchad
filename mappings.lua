local M = {
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
      ["<leader><CR>"] = {
        "<C-^>",
        ""
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
return M
