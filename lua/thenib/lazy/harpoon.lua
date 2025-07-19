return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        require("telescope").load_extension("harpoon")

        -- Keymaps
        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
        end)
        vim.keymap.set("n", "<leader>h", ":Telescope harpoon marks<CR>")
    end,
}
