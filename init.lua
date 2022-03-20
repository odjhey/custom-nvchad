local map = require("core.utils").map

map("n", "<C-p><C-p>", "<cmd>lua require('telescope.builtin').git_files()<cr>", no)
map("n", "<C-p><C-f>", ":Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>", no)
map("n", "<C-p><C-g>", "<cmd>lua require('telescope.builtin').live_grep()<cr>", no)

-- have below cuz i can't make this work with null-ls or on_attach of nvim-lsp FML
vim.api.nvim_command "autocmd BufWritePost *.go :silent! lua vim.lsp.buf.formatting()"
