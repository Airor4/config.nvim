return {
    -- netrw replacement
    "nvim-tree/nvim-tree.lua",
    config = function()
        require('nvim-tree').setup()
        vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { silent = true })
    end,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
}
