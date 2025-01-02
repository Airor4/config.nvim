return {
    "sainnhe/sonokai",
    priority = 1000, -- lazy.nvim suggests this
    config = function()
        vim.cmd([[colorscheme sonokai]])
    end,
}
