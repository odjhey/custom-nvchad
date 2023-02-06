export vim

vim.opt.clipboard = ""

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
  pattern: 'gdscript,python'

  -- command: "setlocal noexpandtab"
  callback: ->
    vim.opt_local.list = true
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    nil
})

nil
