return {
    -- For fuzzy finding... anything really.
    "ibhagwan/fzf-lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.api.nvim_set_keymap('n', '<leader>p', ':Fzf files<CR>', { silent = true })
        vim.api.nvim_set_keymap('n', '<leader>b', ':Fzf buffers<CR>', { silent = true })
        vim.api.nvim_set_keymap('n', '<leader>f', ':FzfLua<CR>', { silent = true })
    end,
}
