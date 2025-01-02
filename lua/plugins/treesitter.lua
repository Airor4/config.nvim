return {
    -- Make things pretty and provides utilities for working with the code tree
    -- NOTE: make sure to use tree sitter compatible colorscheme for best syntax
    -- highlighting
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(_, opts)
        -- Can't rely on default behavior here because it essentially calls
        -- require("nvim-treesitter").setup rather than
        -- require("nvim-treesitter.configs").setup
        local configs = require("nvim-treesitter.configs")
        configs.setup(opts)
    end,
    opts = {
        ensure_installed = {
            "rust",
            "lua",
            "bash",
            "python",
            "javascript",
            "typescript",
            "go",
            "html",
            "json",
            "yaml",
            "toml",
            "markdown",
            "dockerfile",
            "gitcommit",
            "gitignore",
            "sql",
            "vim",
        },
        auto_install = true,
        highlight = {
            enable = true,
            -- disable for large file size
            disable = function(_, buf)
                local max_filesize = 100 * 1024 -- 100 KB
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    return true
                end
            end,
            additional_vim_regex_highlighting = false,
        },
        rainbow = {
            enabled = true,
            extended_mode = true,
        },
        indent = {
            enable = true,
        },
    }
}
