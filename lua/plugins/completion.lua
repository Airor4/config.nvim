-- FIXME: can't use these keybinds with zellij
return {
    -- completion engine for all things
    "hrsh7th/nvim-cmp",
    event = 'InsertEnter',
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        -- I don't put this in opts here because the opts reference cmp
        local cmp = require("cmp")
        cmp.setup({
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
            }),
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-SPACE>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-p>'] = cmp.mapping.select_prev_item(),
            }),
        })
    end,
}
