return {
    'stevearc/conform.nvim',
    config = function()
        local conform = require('conform')
        conform.setup({
            formatters_by_ft = {
                python = { "isort", "black" },
                lua = { "stylua" },
            }
        })
        vim.keymap.set({ 'n', 'v' }, '<C-f>', function()
            conform.format({
                lsp_fallback = true,
                async = true,
                timeout_ms = 500,
            })
        end)
    end
}
