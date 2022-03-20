local map = require("core.utils").map

map("n", "<C-p><C-p>", "<cmd>lua require('telescope.builtin').git_files()<cr>", no)
map("n", "<C-p><C-f>", ":Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>", no)
map("n", "<C-p><C-g>", "<cmd>lua require('telescope.builtin').live_grep()<cr>", no)
