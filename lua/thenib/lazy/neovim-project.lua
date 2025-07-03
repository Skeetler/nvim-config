return {
    "coffebar/neovim-project",
    opts = {
        projects = {
            "~/Documents/prj/*",
            "~/.config/nvim/*",
        },
        picker = {
            type = "telescope",
        },
        on_project_selected = function()
            vim.cmd("Ex")
        end,
    },
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope.nvim" },
        { "Shatur/neovim-session-manager" },
    },
    lazy = false,
    priority = 100,
}
