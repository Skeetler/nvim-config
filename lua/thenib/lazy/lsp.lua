return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "ts_ls", "lua_ls" },
        })

        local lspconfig = require("lspconfig")
        lspconfig.ts_ls.setup({})
        lspconfig.lua_ls.setup({
            root_dir = function(fname)
                if fname:match("/Documents/prj/") then
                    return require("lspconfig").util.root_pattern(".git", "lua/")(fname)
                end
                return require("lspconfig").util.root_pattern(".luarc.json", ".git")(fname)
            end,
            settings = {
                Lua = {
                    workspace = {
                        checkThirdParty = false,
                    },
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })
    end,
}
