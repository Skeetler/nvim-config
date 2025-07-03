vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ec", ":e ~/.config/nvim/init.lua<CR>")

vim.keymap.set("n", "<leader>fp", ":Telescope neovim-project discover<CR>")
vim.keymap.set("n", "<leader>pf", ":Telescope find_files<CR>")
