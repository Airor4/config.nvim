-- TODO: make key bind to toggle git blame. Going to get rid of f-person/git-blame
-- vim.api.nvim_set_keymap('n', '<leader>g', ':GitBlameToggle<CR>', { silent = true })
return {
    -- Shows what lines were added, deleted, modified in git
    "lewis6991/gitsigns.nvim",
    config = function()
        require('gitsigns').setup{
            on_attach = function()
                local gitsigns = require('gitsigns')
                vim.keymap.set('n', '<leader>sg', function() gitsigns.blame_line{full=true} end)
                vim.keymap.set('n', '<leader>g', gitsigns.toggle_current_line_blame)
            end
        }
    end,
}
