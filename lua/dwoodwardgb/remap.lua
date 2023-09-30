vim.g.mapleader = " "
vim.keymap.set("n", "<leader>tv", vim.cmd.Ex)
vim.keymap.set("c", "<Up>", "<C-p>")
vim.keymap.set("c", "<Down>", "<C-n>")
vim.keymap.set("n", "<leader>[", vim.cmd.tabprev)
vim.keymap.set("n", "<leader>]", vim.cmd.tabnext)

-- leader-c for "clean" up code
vim.keymap.set("n", "<leader>c", vim.lsp.buf.format)
