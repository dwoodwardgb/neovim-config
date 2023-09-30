local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>o', builtin.find_files, {})

--vim.keymap.set('n', '<C-p>', builtin.git_files, {})

--vim.keymap.set('n', '<leader>f', function()
--  builtin.grep_string({ search = vim.fn.input("grep: ") });
--end)
vim.keymap.set('n', '<leader>f', function()
  builtin.live_grep();
end)

vim.keymap.set('n', '<leader>th', function()
  builtin.builtin();
end)

vim.keymap.set('n', '<leader>gs', function()
  builtin.git_status();
end)

require('telescope').load_extension('fzy_native')

require('telescope').setup({
  defaults = {
    layout_config = {
      horizontal = { width = 0.95 }
    },
  },
})

