export vim

vim.opt.clipboard = ""
vim.opt.list = true

vim.opt.listchars =
  tab: "→ "
  eol: "¬"
  extends: ">"
  precedes: "<"
  trail: "·"
  space: "."
  nbsp: "␣"

vim.api.nvim_create_autocmd('FileType', {
  group: vim.api.nvim_create_augroup 'tabindents', clear: true
  pattern: 'gdscript'

  -- use command for now, i cant seem to make "callback" work
  command: "setlocal noexpandtab"
})

nil
