return {
   "stevearc/conform.nvim",
   config = function()
       require("conform").setup({
           formatters_by_ft = {
               typescript = { "prettier" },
               javascript = { "prettier" },
               html = { "prettier" },
               css = { "prettier" },
               json = { "prettier" },
               lua = { "stylua" },
           },
           format_on_save = {
               timeout_ms = 500,
               lsp_fallback = true,
           },
       })
   end,
}
