return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {
                    "node_modules/.*",
                    "%.git/.*",
                    "dist/.*",
                    "build/.*",
                    "%.next/.*",
                    "%.swp",
                    "%.swo",
                    "target/.*",
                    "%.class",
                },
            },
        })
    end,
}
