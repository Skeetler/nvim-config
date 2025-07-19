return {
    "13janderson/chtsht-nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("chtsht").setup()
    end,
    lazy = false, -- force load immediately
}
