vim.opt.clipboard = ""
vim.opt.list = true
vim.opt.listchars = {
  tab = "→ ",
  eol = "¬",
  extends = ">",
  precedes = "<",
  trail = "·",
  space = ".",
  nbsp = "␣"
}
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('tabindents', {
    clear = true
  }),
  pattern = 'gdscript,python',
  callback = function()
    vim.opt_local.list = true
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    return nil
  end
})
vim.o.autoread = true
vim.api.nvim_create_autocmd({
  "BufEnter",
  "CursorHold",
  "CursorHoldI",
  "FocusGained"
}, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = {
    "*"
  }
})
return nil
