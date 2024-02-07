vim.g.mapleader = " "
vim.keymap.set("n", "<leader>tv", vim.cmd.Ex)
vim.keymap.set("c", "<Up>", "<C-p>")
vim.keymap.set("c", "<Down>", "<C-n>")
vim.keymap.set("n", "<leader>[", vim.cmd.tabprev)
vim.keymap.set("n", "<leader>]", vim.cmd.tabnext)

-- leader-p for prettier
--vim.keymap.set("n", "<leader>p", "<Plug>(prettier-format)")

--tnoremap <Esc> <C-\><C-n>
--vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

