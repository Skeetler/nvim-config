vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ec", ":e ~/.config/nvim<CR>")

vim.keymap.set("n", "<leader>fp", ":Telescope neovim-project discover<CR>")
vim.keymap.set("n", "<leader>pf", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>ep", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>en", vim.diagnostic.goto_next)
