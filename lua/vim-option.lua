vim.g.mapleader = " "
-- Yanked VIM data to system clipborad only with y no need of +y (+ is system clipboard regiater)
vim.opt.clipboard = 'unnamedplus'
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set rnu")


vim.keymap.set("n", "<C-+>", function()
    local font = vim.o.guifont
    local name, size = font:match("^(.*):h(%d+)$")
    if name and size then
        vim.o.guifont = name .. ":h" .. (tonumber(size) + 1)
    end
end)

vim.keymap.set("n", "<C-->", function()
    local font = vim.o.guifont
    local name, size = font:match("^(.*):h(%d+)$")
    if name and size then
        vim.o.guifont = name .. ":h" .. (tonumber(size) - 1)
    end
end)


--adding color for line numbers
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg='#E4D00A', bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })

