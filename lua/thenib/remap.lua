vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ec", ":e ~/.config/nvim<CR>")

vim.keymap.set("n", "<leader>fp", ":Telescope neovim-project discover<CR>")
vim.keymap.set("n", "<leader>pf", ":Telescope find_files hidden=true<CR>")
vim.keymap.set("n", "<leader>ff", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<C-p>", ":Telescope git_files")
vim.keymap.set("n", "<leader>pWs", function()
    local word = vim.fn.expand("<cWORD>")
    vim.cmd("Telescope grep_string default_text=" .. word)
end)
vim.keymap.set("n", "<leader>vh", ":Telescope help_tags<CR>")

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>ep", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>en", vim.diagnostic.goto_next)

vim.keymap.set("n", "<leader>pr", ":e .<CR>", { desc = "Open root directory" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

--LSP

vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
