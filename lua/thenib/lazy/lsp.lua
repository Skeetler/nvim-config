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
        -- TypeScript LSP
        vim.lsp.config["ts_ls"] = {
            cmd = { "typescript-language-server", "--stdio" },
            filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
            root_dir = function(fname)
                if type(fname) ~= "string" then
                    return nil
                end
                return vim.fs.find({ "package.json", "tsconfig.json", ".git" }, { upward = true, path = fname })[1]
            end,
        }

        vim.lsp.config["eslint"] = {
            cmd = { "vscode-eslint-language-server", "--stdio" },
            filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
            root_dir = function(fname)
                if type(fname) ~= "string" or fname == "" then
                    return nil
                end
                local found = vim.fs.find({ "package.json", "tsconfig.json", ".git" }, { upward = true, path = fname })
                return found and found[1] or nil
            end,
        }

        -- Lua LSP
        vim.lsp.config["lua_ls"] = {
            cmd = { "lua-language-server" },
            filetypes = { "lua" },
            root_dir = function(fname)
                if type(fname) ~= "string" then
                    return nil
                end

                local config_dir = vim.fn.stdpath("config")
                local prj_dir = vim.fn.expand("~/Documents/prj")

                if fname:match(config_dir) then
                    return config_dir
                elseif fname:match(prj_dir) then
                    return vim.fs.find({ ".git", "lua/" }, { upward = true, path = fname })[1]
                end
                return nil
            end,
            settings = {
                Lua = {
                    workspace = { checkThirdParty = false },
                    diagnostics = { globals = { "vim" } },
                },
            },
        }
        vim.lsp.enable("lua_ls")
    end,
}
