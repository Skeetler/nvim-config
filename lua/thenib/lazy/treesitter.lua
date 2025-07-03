return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "typescript", "javascript", "html", "css", "c_sharp", "java" },
            auto_install = true,
            highlight = {
                enable = true,
            },
        })
    end,
}
