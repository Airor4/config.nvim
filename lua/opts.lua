vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "

-- TODO: not really sure what this does
vim.opt.inccommand = "split"

vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.colorcolumn = "88,120"
vim.opt.swapfile = false

-- vim will use the same clipboard as OS
vim.opt.clipboard = 'unnamedplus'
vim.opt.undofile = true

-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- TODO
-- local xdg_config_home = os.getenv("XDG_CONFIG_HOME") or os.getenv("HOME") .. "/.config"

-- Use the xdg_config_home variable in the path to the Python interpreter
-- vim.g.python_host_prog = xdg_config_home .. '/.venvs/nvim/bin/python'
-- vim.g.python3_host_prog = xdg_config_home .. '/.venvs/nvim/bin/python'
-- auto command to highlight the section when it's yanked

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
