return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
        vim.keymap.set("n", "<leader>gl", ":Git pull<CR>")
    end,
}
