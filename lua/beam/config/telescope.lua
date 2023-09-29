local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader><leader>p', builtin.find_files, {}) -- (f)ile (a)ll
-- vim.keymap.set('n', '<leader><leader>p', builtin.git_files, {})  -- (f)ile (f)ind
