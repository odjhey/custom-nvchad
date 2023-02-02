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
  pattern = 'gdscript',
  command = "setlocal noexpandtab"
})
return nil
